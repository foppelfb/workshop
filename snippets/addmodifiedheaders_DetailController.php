<?php


protected $updated = 0;

public function processRequest(\TYPO3\CMS\Extbase\Mvc\RequestInterface $request, \TYPO3\CMS\Extbase\Mvc\ResponseInterface $response)
{
    try {
        parent::processRequest($request, $response);
    }
    catch(\Exception $e) {
        throw $e;
    }
    if ($request->getControllerActionName() === 'detail') {
        if ($this->updated > 0) {
            $response->setHeader('Last-Modified',gmdate('D, d M Y H:i:s T',$this->updated),true);
            $response->setHeader('ETag','"'.md5($response->getContent()).'"',true);
            $response->setHeader('Cache-Control','no-cache,must-revalidate',true);
            $response->setHeader('Pragma','public',true);
            
        }
    }
    
}

//...
$tstamp = $blog->getTstamp();
/** @var Comment $latestcomment */
if ($latestcomment = $this->commentRepository->findByBlog($blog)->getFirst()) {
    if ($latestcomment->getTstamp() > $tstamp) {
        $tstamp = $latestcomment->getTstamp();
    }
}
$data = ['updated'=>$tstamp];
$data['content'] = $this->view->render();
// ...
$this->updated = $data['updated'];
return $data['content'];
