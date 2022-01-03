<?php

namespace App\Notification;

use Twig\Environment;
use App\Entity\Contact;
use Symfony\Component\Mime\Email;
use Symfony\Component\Mailer\MailerInterface;

class ContactNotification
{
    private $renderer;
    private $mailer;

    public function __construct(Environment $renderer, MailerInterface $mailer)
    {
        $this->renderer = $renderer;
        $this->mailer = $mailer;
    }

    public function notify(Contact $contact)
    {
        $message = (new Email())
            ->from('')
            ->to('')
            ->subject($contact->getSubject())
            ->replyTo($contact->getEmail())
            ->text($this->renderer->render('emails/contact.html.twig',[
               'contact' => $contact 
            ]), 'text/html');
        
        
        $this->mailer->send($message);
    }

}
