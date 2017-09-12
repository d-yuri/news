<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Validator\Constraints\DateTime;


class NewsController extends Controller
{
    /**
     * @Route("/news", defaults = {"_format"="html"}, name="news_list")
     * @Route("/news.{_format}")
     */
    public function newsAction(Request $request, $_format)
    {

        $count = 5;

        $query = $this->getDoctrine()->getManager()
            ->getRepository('AcmeNewsBundle:News')
            ->createQueryBuilder('n')
            ->getQuery()
        ;
        $paginator = $this->get('knp_paginator');

        $newsList = $paginator->paginate(
            $query,
            $request->query->getInt('page', 1),
            $count
        );

        if ($_format == 'xml') {
            $rootNode = new \SimpleXMLElement("<?xml version='1.0' encoding='UTF-8' standalone='yes'?><items></items>");

            $itemList = $rootNode->addChild('list');
            foreach ($newsList as $allNewsPost) {

                $item = $itemList->addChild('item');
                $item->addAttribute('id', $allNewsPost->getId());
                $item->addAttribute('date', $allNewsPost->getDate()->format('Y-m-d'));
                $item->addChild('announce', $allNewsPost->getTitle());
                $item->addChild('description', $allNewsPost->getDescription());

            }
            $response = new Response($rootNode->asXML());
            $response->headers->set('Content-Type', 'xml');

            return $response;
        }

        return $this->render('@AcmeNews/news/news.html.twig', compact('newsList'));

    }
    /**
     * @Route("/news/{id}", name="singl_news")
     */
    public function singlNewsAction($id)
    {
        $newsList = $this->getDoctrine()->getManager()
            ->getRepository('AcmeNewsBundle:News')->findBy(['publisher'=>1])
        ;
        return $this->render('@AcmeNews/news/singlNews.html.twig', compact('newsList','id'));
    }


    /**
     * @Route("/", name="index")
     */
    public function indexAction(){
        return $this->render('base.html.twig');

    }}
