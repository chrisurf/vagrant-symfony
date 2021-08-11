                                                       @@@@@                    
                                                   @@@@     @@@@                
                                                @@@@       @@@@@@               
                                              @@@@@         @@@@                
                                            @@@@@@                              
                        @@@@@@@@@@@@@      @@@@@@@                              
                      @@@@@         @@@   @@@@@@@      @@@@@                    
                     @@@@@@            @@@@@@@@@@       @@@@                    
                    @@@@@@@@@           @@@@@@@@@@@@@@@@@                      
                     @@@@@@@@@@         @@@@@@@@                                
                       @@@@@@@@@@      @@@@@@@@                                 
              @@@@@      @@@@@@@@@     @@@@@@@@                                 
              @@@@@@       @@@@@@     @@@@@@@@                                  
               @@@        @@@@@@      @@@@@@@@                                  
                  @@@@@@@@@@@@       @@@@@@@@                                   
                                     @@@@@@@                                    
                                    @@@@@@@                                     
                                   @@@@@@@                                      
                       @@@        .@@@@@                                        
                     @@@@@@@     @@@@@                                          
                     @@@@@@    @@@@@                                            
                      @@@@@@@@@@                                                
         
# vagrant-symfony-ansible
 (c) Chris Oguntolu 2021

## Maintainer Contact
Chris Oguntolu <c.oguntolu (at) gmail (dot) com>

## Content
A Vagrant VM with a Symfony sandbox fuelled by Ansible. 

For reference of the Symfony framework visit [symfony.com](https://symfony.com/)

### VM Enviroment
* ubuntu 20.04
* apache 2.4.41
* php 7.4.22
* mysql 8.0.25-15
* nodejs 12.22.4
* npm 6.14.14
* yarn 1.22.5

### Defaults
* Default server ip: 192.168.12.34 domain: symfony.box
* Default mysql db: symfony, user: symfony, password: symfony.
* Default phpmyadmin user: symfony, password: symfony.

### Configuration
* Rename the config.yml.example file into config.yml.
* Edit the config file according to your requirements.
* Edit the symfony enviroment variables according to your requirements.

## Usage

### Run
```
vagrant up
```

### Test
* Open [symfony.box](http://symfony.box) in your browser of choice.
* Open [phpmyadmin](http://symfony.box/phpmyadmin) in your favourite browser.

## Usage

### Configuration
* Rename the config.yml.example file into config.yml.
* Edit the config file acording to your requirements.