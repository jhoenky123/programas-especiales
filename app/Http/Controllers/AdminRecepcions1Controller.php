<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;


	class AdminRecepcions1Controller extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {

			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "id";
			$this->limit = "20";
			$this->orderby = "id,desc";
			$this->global_privilege = false;
			$this->button_table_action = true;
			$this->button_bulk_action = true;
			$this->button_action_style = "button_dropdown";
			$this->button_add = true;
			$this->button_edit = true;
			$this->button_delete = true;
			$this->button_detail = true;
			$this->button_show = true;
			$this->button_filter = true;
			$this->button_import = false;
			$this->button_export = true;
			$this->table = "recepcions";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

            $order_number = DB::table('recepcions')->count('codnotaentrega') + 1;
            $order_number = str_pad($order_number, 5, 0 , STR_PAD_LEFT);

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"Fecha","name"=>"fecha"];
			$this->col[] = ["label"=>"Status","name"=>"status","callback_php"=>'($row->status=="aprovado")?"<span class=\"label label-success\">APROVADO</span>":"<span class=\"label label-warning\">PENDIENTE</span>"'];
			$this->col[] = ["label"=>"Codnotaentrega","name"=>"codnotaentrega",];
			$this->col[] = ["label"=>"Estado","name"=>"estado_id", "join" => "estados,estados"];
			$this->col[] = ["label"=>"Municipio","name"=>"municipio_id", "join" => "municipio,municipio"];
			$this->col[] = ["label"=>"Parroquia","name"=>"parroquia_id", "join" => "parroquia,parroquia"];
			$this->col[] = ["label"=>"Nombreescuela","name"=>"nombreescuela"];
			$this->col[] = ["label"=>"Escodsunagro","name"=>"escodsunagro"];
			# END COLUMNS DO NOT REMOVE THIS LINE


			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
            if(CRUDBooster::isSuperAdmin() or CRUDBooster::myPrivilegeId() == '3'){$this->form[] = ['label'=>'Status','name'=>'status','type'=>'text','validation'=>'required','width'=>'col-sm-5', 'value'=>'pendiente'];}
            $this->form[] = ['label'=>'Fecha','name'=>'fecha','type'=>'datetime','validation'=>'required|date_format:Y-m-d H:i:s','width'=>'col-sm-3'];
			$this->form[] = ['label'=>'N° Nota de Entrega-Despacho','name'=>'codnotaentrega','type'=>'text','validation'=>'required','width'=>'col-sm-5', 'value'=>$order_number,];
			$this->form[] = ['label'=>'Estado','name'=>'estado_id','type'=>'select','validation'=>'required|min:1|max:255','width'=>'col-sm-5','datatable'=>'estados,estados'];
			$this->form[] = ['label'=>'Municipio','name'=>'municipio_id','type'=>'select','validation'=>'required|min:1|max:255','width'=>'col-sm-5','datatable'=>'municipio,municipio','parent_select'=>'estado_id'];
			$this->form[] = ['label'=>'Parroquia','name'=>'parroquia_id','type'=>'select','validation'=>'required|min:1|max:255','width'=>'col-sm-5','datatable'=>'parroquia,parroquia','parent_select'=>'municipio_id'];
			$this->form[] = ['label'=>'Nombre Institución','name'=>'nombreescuela','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-5'];
			$this->form[] = ['label'=>'Codigo SUNAGRO','name'=>'escodsunagro','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-5'];
			$this->form[] = ['label'=>'Dirección','name'=>'direccion','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-5'];
			$this->form[] = ['label'=>'Programa Social','name'=>'nomprosocial','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-5'];
			$this->form[] = ['label'=>'Ente responsable','name'=>'noenterespon','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-5'];
			$this->form[] = ['label'=>'N° Beneficiarios','name'=>'numbeneficiario','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-5'];
			$this->form[] = ['label'=>'Responsable','name'=>'nomresponsable','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-5'];
			$this->form[] = ['label'=>'Cedula','name'=>'codcedula1','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-5'];
			$this->form[] = ['label'=>'N° Teléfono','name'=>'numtelefono1','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-5'];
			$this->form[] = ['label'=>'Centro que lo Abastece','name'=>'cendisabastece','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-5'];
			$this->form[] = ['label'=>'Ultimo Despacho','name'=>'fechaultdespacho','type'=>'datetime','validation'=>'required|date_format:Y-m-d H:i:s','width'=>'col-sm-3'];
			$this->form[] = ['label'=>'Responsable a Retirar el Despacho','name'=>'persrespdespacho','type'=>'text','validation'=>'required','width'=>'col-sm-5'];
			$this->form[] = ['label'=>'N° teléfono','name'=>'numtelefono2','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-5'];
			$this->form[] = ['label'=>'Cargo','name'=>'cargoretira','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-5'];
			$this->form[] = ['label'=>'PROTEÍNAS','name'=>'cantrecibido','type'=>'header','width'=>'col-sm-5'];
			$this->form[] = ['label'=>'Pollo','name'=>'pollo','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-5'];
			$this->form[] = ['label'=>'Carne','name'=>'carne','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-5'];
			$this->form[] = ['label'=>'Mortadela','name'=>'mortadela','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-5'];
			$this->form[] = ['label'=>'FRUVER','name'=>'fruver','type'=>'header','width'=>'col-sm-5'];
			$this->form[] = ['label'=>'Frutas','name'=>'frutas','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-5'];
			$this->form[] = ['label'=>'Verduras','name'=>'verduras','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-5'];
			$this->form[] = ['label'=>'Hortalizas','name'=>'hortalizas','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-5'];
			$this->form[] = ['label'=>'Observaciones','name'=>'observaciones','type'=>'text','validation'=>'|min:1|max:255','width'=>'col-sm-5'];
			$this->form[] = ['label'=>'MAS DATOS','name'=>'datos','type'=>'header','width'=>'col-sm-5'];
			$this->form[] = ['label'=>'Nombre Quien Suministra los Datoa','name'=>'nomsumidatos','type'=>'text','validation'=>'max:255','width'=>'col-sm-5'];
			$this->form[] = ['label'=>'Cedula','name'=>'codcedula2','type'=>'number','width'=>'col-sm-5'];
			$this->form[] = ['label'=>'Cargo','name'=>'cargosumi','type'=>'text','validation'=>'min:1|max:255','width'=>'col-sm-5'];
			$this->form[] = ['label'=>'Nombre del funcionario que Realiza la Inspección','name'=>'nomfuncinspec','type'=>'text','validation'=>'min:1|max:255','width'=>'col-sm-5'];
			$this->form[] = ['label'=>'Cedula','name'=>'codcedula3','type'=>'number','width'=>'col-sm-5'];
			$this->form[] = ['label'=>'Cargo','name'=>'cargofuncio','type'=>'text','validation'=>'min:1|max:255','width'=>'col-sm-5'];
			# END FORM DO NOT REMOVE THIS LINE


			# OLD START FORM
			//$this->form = [];
			//if(CRUDBooster::isSuperAdmin() or CRUDBooster::myPrivilegeId() == '3'){$this->form[] = ['label'=>'Status','name'=>'status','type'=>'text','validation'=>'required','width'=>'col-sm-5'];}
			//$this->form[] = ['label'=>'Fecha','name'=>'fecha','type'=>'datetime','validation'=>'required|date_format:Y-m-d H:i:s','width'=>'col-sm-3'];
			//$this->form[] = ['label'=>'N° Nota de Entrega-Despacho','name'=>'codnotaentrega','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-5'];
			//$this->form[] = ['label'=>'Estado','name'=>'estado','type'=>'select','validation'=>'required|min:1|max:255','width'=>'col-sm-5','datatable'=>'estados,estados'];
			//$this->form[] = ['label'=>'Municipio','name'=>'municipio','type'=>'select','validation'=>'required|min:1|max:255','width'=>'col-sm-5','datatable'=>'municipio,municipio'];
			//$this->form[] = ['label'=>'Parroquia','name'=>'parroquia','type'=>'select','validation'=>'required|min:1|max:255','width'=>'col-sm-5','datatable'=>'parroquia,parroquia'];
			//$this->form[] = ['label'=>'Nombre Institución','name'=>'nombreescuela','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-5'];
			//$this->form[] = ['label'=>'Codigo SUNAGRO','name'=>'escodsunagro','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-5'];
			//$this->form[] = ['label'=>'Dirección','name'=>'direccion','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-5'];
			//$this->form[] = ['label'=>'Programa Social','name'=>'nomprosocial','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-5'];
			//$this->form[] = ['label'=>'Ente responsable','name'=>'noenterespon','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-5'];
			//$this->form[] = ['label'=>'N° Beneficiarios','name'=>'numbeneficiario','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-5'];
			//$this->form[] = ['label'=>'Responsable','name'=>'nomresponsable','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-5'];
			//$this->form[] = ['label'=>'Cedula','name'=>'codcedula1','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-5'];
			//$this->form[] = ['label'=>'N° Teléfono','name'=>'numtelefono1','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-5'];
			//$this->form[] = ['label'=>'Centro que lo Abastece','name'=>'cendisabastece','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-5'];
			//$this->form[] = ['label'=>'Ultimo Despacho','name'=>'fechaultdespacho','type'=>'datetime','validation'=>'required|date_format:Y-m-d H:i:s','width'=>'col-sm-3'];
			//$this->form[] = ['label'=>'Responsable a Retirar el Despacho','name'=>'persrespdespacho','type'=>'text','validation'=>'required','width'=>'col-sm-5'];
			//$this->form[] = ['label'=>'N° teléfono','name'=>'numtelefono2','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-5'];
			//$this->form[] = ['label'=>'Cargo','name'=>'cargoretira','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-5'];
			//$this->form[] = ['label'=>'PROTEÍNAS','name'=>'cantrecibido','type'=>'header','width'=>'col-sm-5'];
			//$this->form[] = ['label'=>'Pollo','name'=>'pollo','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-5'];
			//$this->form[] = ['label'=>'Carne','name'=>'carne','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-5'];
			//$this->form[] = ['label'=>'Mortadela','name'=>'mortadela','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-5'];
			//$this->form[] = ['label'=>'FRUVER','name'=>'fruver','type'=>'header','width'=>'col-sm-5'];
			//$this->form[] = ['label'=>'Frutas','name'=>'frutas','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-5'];
			//$this->form[] = ['label'=>'Verduras','name'=>'verduras','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-5'];
			//$this->form[] = ['label'=>'Hortalizas','name'=>'hortalizas','type'=>'number','validation'=>'required|integer|min:0','width'=>'col-sm-5'];
			//$this->form[] = ['label'=>'Observaciones','name'=>'observaciones','type'=>'text','validation'=>'|min:1|max:255','width'=>'col-sm-5'];
			//$this->form[] = ['label'=>'MAS DATOS','name'=>'datos','type'=>'header','width'=>'col-sm-5'];
			//$this->form[] = ['label'=>'Nombre Quien Suministra los Datoa','name'=>'nomsumidatos','type'=>'text','validation'=>'max:255','width'=>'col-sm-5'];
			//$this->form[] = ['label'=>'Cedula','name'=>'codcedula2','type'=>'number','width'=>'col-sm-5'];
			//$this->form[] = ['label'=>'Cargo','name'=>'cargosumi','type'=>'text','validation'=>'min:1|max:255','width'=>'col-sm-5'];
			//$this->form[] = ['label'=>'Nombre del funcionario que Realiza la Inspección','name'=>'nomfuncinspec','type'=>'text','validation'=>'min:1|max:255','width'=>'col-sm-5'];
			//$this->form[] = ['label'=>'Cedula','name'=>'codcedula3','type'=>'number','width'=>'col-sm-5'];
			//$this->form[] = ['label'=>'Cargo','name'=>'cargofuncio','type'=>'text','validation'=>'min:1|max:255','width'=>'col-sm-5'];
			# OLD END FORM

			/*
	        | ----------------------------------------------------------------------
	        | Sub Module
	        | ----------------------------------------------------------------------
			| @label          = Label of action
			| @path           = Path of sub module
			| @foreign_key 	  = foreign key of sub table/module
			| @button_color   = Bootstrap Class (primary,success,warning,danger)
			| @button_icon    = Font Awesome Class
			| @parent_columns = Sparate with comma, e.g : name,created_at
	        |
	        */

	        $this->sub_module = array();


	        /*
	        | ----------------------------------------------------------------------
	        | Add More Action Button / Menu
	        | ----------------------------------------------------------------------
	        | @label       = Label of action
	        | @url         = Target URL, you can use field alias. e.g : [id], [name], [title], etc
	        | @icon        = Font awesome class icon. e.g : fa fa-bars
	        | @color 	   = Default is primary. (primary, warning, succecss, info)
	        | @showIf 	   = If condition when action show. Use field alias. e.g : [id] == 1
	        |
	        */
	        $this->addaction = array();
                if(CRUDBooster::isSuperAdmin() or CRUDBooster::myPrivilegeId() == '3') {
                    $this->addaction[] = ['label'=>'Aprobar','url'=>CRUDBooster::mainpath('set-status/aprovado/[id]'),'icon'=>'fa fa-check','color'=>'success', 'showIf'=>'[status] == "pendiente"'];
                    $this->addaction[] = ['label'=>'Rechazar','url'=>CRUDBooster::mainpath('set-status/pendiente/[id]'),'icon'=>'fa fa-ban','color'=>'warning','showIf'=>'[status] == "aprovado"'];
                // DB::table('recepcions')->where('id', 1 )->update(array('status'=>'1',))

            }


	        /*
	        | ----------------------------------------------------------------------
	        | Add More Button Selected
	        | ----------------------------------------------------------------------
	        | @label       = Label of action
	        | @icon 	   = Icon from fontawesome
	        | @name 	   = Name of button
	        | Then about the action, you should code at actionButtonSelected method
	        |
	        */
	        $this->button_selected = array();


	        /*
	        | ----------------------------------------------------------------------
	        | Add alert message to this module at overheader
	        | ----------------------------------------------------------------------
	        | @message = Text of message
	        | @type    = warning,success,danger,info
	        |
	        */
	        $this->alert = array();



	        /*
	        | ----------------------------------------------------------------------
	        | Add more button to header button
	        | ----------------------------------------------------------------------
	        | @label = Name of button
	        | @url   = URL Target
	        | @icon  = Icon from Awesome.
	        |
	        */
	        $this->index_button = array();



	        /*
	        | ----------------------------------------------------------------------
	        | Customize Table Row Color
	        | ----------------------------------------------------------------------
	        | @condition = If condition. You may use field alias. E.g : [id] == 1
	        | @color = Default is none. You can use bootstrap success,info,warning,danger,primary.
	        |
	        */
	        $this->table_row_color = array();
            $this->table_row_color[] = ['condition'=>"[status] == 'aprovado'","color"=>"success"];
            $this->table_row_color[] = ['condition'=>"[status] == 'pendiente'","color"=>"danger"];


	        /*
	        | ----------------------------------------------------------------------
	        | You may use this bellow array to add statistic at dashboard
	        | ----------------------------------------------------------------------
	        | @label, @count, @icon, @color
	        |
	        */
	        $this->index_statistic = array();



	        /*
	        | ----------------------------------------------------------------------
	        | Add javascript at body
	        | ----------------------------------------------------------------------
	        | javascript code in the variable
	        | $this->script_js = "function() { ... }";
	        |
	        */
	        $this->script_js = "  ";



            /*
	        | ----------------------------------------------------------------------
	        | Include HTML Code before index table
	        | ----------------------------------------------------------------------
	        | html code to display it before index table
	        | $this->pre_index_html = "<p>test</p>";
	        |
	        */
	        $this->pre_index_html = null;



	        /*
	        | ----------------------------------------------------------------------
	        | Include HTML Code after index table
	        | ----------------------------------------------------------------------
	        | html code to display it after index table
	        | $this->post_index_html = "<p>test</p>";
	        |
	        */
	        $this->post_index_html = null;



	        /*
	        | ----------------------------------------------------------------------
	        | Include Javascript File
	        | ----------------------------------------------------------------------
	        | URL of your javascript each array
	        | $this->load_js[] = asset("myfile.js");
	        |
	        */
	        $this->load_js = array();



	        /*
	        | ----------------------------------------------------------------------
	        | Add css style at body
	        | ----------------------------------------------------------------------
	        | css code in the variable
	        | $this->style_css = ".style{....}";
	        |
	        */
	        $this->style_css = NULL;



	        /*
	        | ----------------------------------------------------------------------
	        | Include css File
	        | ----------------------------------------------------------------------
	        | URL of your css each array
	        | $this->load_css[] = asset("myfile.css");
	        |
	        */
	        $this->load_css = array();



	    }
         //Estado de la planilla
        public function getSetStatus($status,$id) {
            DB::table('recepcions')->where('id',$id)->update(['status'=>$status]);

            //This will redirect back and gives a message
            CRUDBooster::redirect($_SERVER['HTTP_REFERER'],"El estado a sido actualizado!","info");
         }

         //Funcion numero factura


	    /*
	    | ----------------------------------------------------------------------
	    | Hook for button selected
	    | ----------------------------------------------------------------------
	    | @id_selected = the id selected
	    | @button_name = the name of button
	    |
	    */
	    public function actionButtonSelected($id_selected,$button_name) {
	        //Your code here

	    }


	    /*
	    | ----------------------------------------------------------------------
	    | Hook for manipulate query of index result
	    | ----------------------------------------------------------------------
	    | @query = current sql query
	    |
	    */
	    public function hook_query_index(&$query) {
	        //Your code here

	    }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for manipulate row of index table html
	    | ----------------------------------------------------------------------
	    |
	    */
	    public function hook_row_index($column_index,&$column_value) {
	    	//Your code here
	    }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for manipulate data input before add data is execute
	    | ----------------------------------------------------------------------
	    | @arr
	    |
	    */
	    public function hook_before_add(&$postdata) {
	        //Your code here

	    }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for execute command after add public static function called
	    | ----------------------------------------------------------------------
	    | @id = last insert id
	    |
	    */
	    public function hook_after_add($id) {
	        //Your code here

	    }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for manipulate data input before update data is execute
	    | ----------------------------------------------------------------------
	    | @postdata = input post data
	    | @id       = current id
	    |
	    */
	    public function hook_before_edit(&$postdata,$id) {
	        //Your code here

	    }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for execute command after edit public static function called
	    | ----------------------------------------------------------------------
	    | @id       = current id
	    |
	    */
	    public function hook_after_edit($id) {
	        //Your code here

	    }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for execute command before delete public static function called
	    | ----------------------------------------------------------------------
	    | @id       = current id
	    |
	    */
	    public function hook_before_delete($id) {
	        //Your code here

	    }

	    /*
	    | ----------------------------------------------------------------------
	    | Hook for execute command after delete public static function called
	    | ----------------------------------------------------------------------
	    | @id       = current id
	    |
	    */
	    public function hook_after_delete($id) {
	        //Your code here

	    }



	    //By the way, you can still create your own method in here... :)


	}
