//
//  ViewController.swift
//  Dafra Oficinas
//
//  Created by Fabricio Cardoso on 02/04/17.
//  Copyright © 2017 Fabricio Cardoso. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var Estados: [SincronisaEstados] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var Estado: SincronisaEstados

        Estado = SincronisaEstados(Estado: "ACRE")
        Estados.append( Estado )
        
        Estado = SincronisaEstados(Estado: "ALAGOAS")
        Estados.append( Estado )
        
        Estado = SincronisaEstados(Estado: "RIO DE JANEIRO")
        Estados.append( Estado )
        
        Estado = SincronisaEstados(Estado: "SAO PAULO")
        Estados.append( Estado )

    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Estados.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let Estado = Estados[ indexPath.row ]
        let ReusoCell = "ReusoCell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: ReusoCell, for: indexPath) as! EstadoCell
        cell.Estado.text = Estado.Estado
        
        /*cell.textLabel?.text = Estado.Estado*/
        
        
        
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

