class CuentaBancaria
  attr_accessor :saldo_cuenta_corriente, :saldo_cuenta_ahorro

  @@no_of_clients = 0

  def initialize(nombre, rut)
    @account_owner = nombre
    @account_owner_rut = rut
    @numero_cuenta_corriente = rut + '-cte'
    @numero_cuenta_ahorro = rut + '-ahorro'
    @saldo_cuenta_corriente = 0
    @saldo_cuenta_ahorro = 0
    @tasa_interes = 0.01
    @@no_of_clients += 1
    p "Creadas Cuentas a nombre de #{@account_owner}, cliente numero #{@@no_of_clients}"
  end

  def show_number_of_clients()
    p "El banco tiene un total de #{@@no_of_clients} clientes"
  end

  def show_saldo_cta_cte()
    p "El saldo de la cuenta corriente es: #{@saldo_cuenta_corriente}"
    return self
  end

  def show_saldo_cta_ahorro()
    p "El saldo de la cuenta ahorro es: #{@saldo_cuenta_ahorro}"
    return self
  end

  def show_saldo_total()
    p "El saldo total de todas tus cuentas es: #{@saldo_cuenta_corriente + @saldo_cuenta_ahorro}"
    return self
  end

  def deposit_money(tipo_cuenta, ammount)
    if tipo_cuenta == "cta_cte"
      @saldo_cuenta_corriente += ammount
      p "Depositaste $#{ammount} en tu Cuenta Corriente."
      show_saldo_cta_cte()
    elsif tipo_cuenta == "cta_ahorro" 
      @saldo_cuenta_ahorro += ammount
      p "Depositaste $#{ammount} en tu Cuenta Ahorro."
      show_saldo_cta_ahorro()
    end
    return self
  end

  def retire_money(tipo_cuenta, ammount)
    if tipo_cuenta == "cta_cte" 
      if @saldo_cuenta_corriente >= ammount
        @saldo_cuenta_corriente -= ammount
        p "Retiraste $#{ammount} de tu Cuenta Corriente."
        show_saldo_cta_cte()
      elsif
        p "No tienes suficiente saldo en tu Cuenta Corriente."
      end
    end

    if tipo_cuenta == "cta_ahorro"
      if @saldo_cuenta_ahorro >= ammount
        @saldo_cuenta_ahorro -= ammount
        p "Retiraste $#{ammount} de tu Cuenta Ahorro."
        show_saldo_cta_ahorro()
      elsif
        p "No tienes suficiente saldo en tu Cuenta Ahorro."
      end
    end
    return self
  end

  def account_information()
    p "El cliente #{@account_owner}, RUT: #{@account_owner_rut} posee las siguentes cuentas:"
    show_saldo_total()
    show_saldo_cta_cte()
    show_saldo_cta_ahorro()
    p "La tasa de interes vigente es: #{@tasa_interes}"
    return self
  end

end

juanSegura = CuentaBancaria.new('Juan Segura', '4555666-K').show_saldo_cta_cte().show_saldo_cta_ahorro().deposit_money("cta_cte", 100).deposit_money("cta_ahorro", 50).show_saldo_cta_cte().show_saldo_cta_ahorro().retire_money("cta_cte", 50).retire_money("cta_cte", 60).retire_money("cta_ahorro", 10).retire_money("cta_ahorro", 60)

pedritoPaga = CuentaBancaria.new('Pedro Paga', '10111222-3').deposit_money("cta_cte", 100).deposit_money("cta_ahorro", 50).account_information()
