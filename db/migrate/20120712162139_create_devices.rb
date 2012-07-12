class CreateDevices < ActiveRecord::Migration
 def change
    create_table :devices do |t|
      t.string  :name
      t.string  :serial_number
      t.string  :service_impact
      t.string  :manufacturer
      t.string  :model
      t.string  :device_type
      t.string  :cpu_type
      t.string  :cpu_speed
      t.string  :installation_year
      t.string  :status
      t.string  :operating_system
      t.string  :memory
      t.string  :Device_Notes
      t.string  :asset_tag
      t.date    :aquisition_date
      t.integer :po_number
      t.integer :requisition_number
      t.string  :sar_system_handle
      t.integer :sa_id
      t.integer :location_id
      t.integer :server_id
      t.timestamps
    end
  end
end

# HwID
# ComputerName
# ServiceImpact
# Serial_Number
# Manufacturer
# Model
# Device_Type
# CPU_Type
# CPU_Speed
# Installation_Year
# Status
# OperatingSystem
# IP_Address
# Memory
# Device_Notes
# Private_IP_Address
# Asset_Tag
# AquisitionDate
# PO_Number
# Requisition_Number
# SAR_System_Handle
# Cust_Contact_Sold_To
# SA_ID
# Location_ID(FK)
# DateofModification
# Modified_UserID			