class ApplicationHelper::Toolbar::VmInfrasCenter < ApplicationHelper::Toolbar::Basic
  button_group('vm_vmdb', [
    select(
      :vm_vmdb_choice,
      'fa fa-cog fa-lg',
      t = N_('Configuration'),
      t,
      :enabled => false,
      :onwhen  => "1+",
      :items   => [
        button(
          :vm_refresh,
          'fa fa-refresh fa-lg',
          N_('Refresh relationships and power states for all items related to the selected items'),
          N_('Refresh Relationships and Power States'),
          :url_parms => "main_div",
          :confirm   => N_("Refresh relationships and power states for all items related to the selected items?"),
          :enabled   => false,
          :onwhen    => "1+"),
        button(
          :vm_scan,
          'fa fa-search fa-lg',
          N_('Perform SmartState Analysis on the selected items'),
          N_('Perform SmartState Analysis'),
          :url_parms => "main_div",
          :confirm   => N_("Perform SmartState Analysis on the selected items?"),
          :enabled   => false,
          :onwhen    => "1+",
          :klass     => ApplicationHelper::Button::BasicImage),
        button(
          :vm_collect_running_processes,
          'fa fa-eyedropper fa-lg',
          N_('Extract Running Processes for the selected items'),
          N_('Extract Running Processes'),
          :confirm   => N_("Extract Running Processes for the selected items?"),
          :url_parms => "main_div",
          :enabled   => false,
          :onwhen    => "1+"),
        button(
          :vm_compare,
          'product product-compare fa-lg',
          N_('Select two or more items to compare'),
          N_('Compare Selected items'),
          :url_parms => "main_div",
          :enabled   => false,
          :onwhen    => "2+"),
        separator,
        button(
          :vm_edit,
          'pficon pficon-edit fa-lg',
          N_('Select a single item to edit'),
          N_('Edit Selected item'),
          :url_parms => "main_div",
          :enabled   => false,
          :onwhen    => "1"),
        button(
          :vm_ownership,
          'pficon pficon-user fa-lg',
          N_('Set Ownership for the selected items'),
          N_('Set Ownership'),
          :url_parms => "main_div",
          :enabled   => false,
          :onwhen    => "1+"),
        button(
          :vm_delete,
          'pficon pficon-delete fa-lg',
          t = N_('Remove selected items from the VMDB'),
          t,
          :url_parms => "main_div",
          :confirm   => N_("Warning: The selected items and ALL of their components will be permanently removed from the Virtual Management Database.  Are you sure you want to remove the selected items?"),
          :enabled   => false,
          :onwhen    => "1+"),
        separator,
        button(
          :vm_right_size,
          'product product-custom-6 fa-lg',
          N_('CPU/Memory Recommendations of selected item'),
          N_('Right-Size Recommendations'),
          :url_parms => "main_div",
          :enabled   => false,
          :onwhen    => "1"),
        button(
          :vm_reconfigure,
          'pficon pficon-edit fa-lg',
          N_('Reconfigure the Memory/CPUs of selected items'),
          N_('Reconfigure Selected items'),
          :url_parms => "main_div",
          :enabled   => false,
          :onwhen    => "1+"),
      ]
    ),
  ])
  button_group('vm_policy', [
    select(
      :vm_policy_choice,
      'fa fa-shield fa-lg',
      t = N_('Policy'),
      t,
      :enabled => false,
      :onwhen  => "1+",
      :items   => [
        button(
          :vm_protect,
          'pficon pficon-edit fa-lg',
          N_('Manage Policies for the selected items'),
          N_('Manage Policies'),
          :url_parms => "main_div",
          :enabled   => false,
          :onwhen    => "1+"),
        button(
          :vm_policy_sim,
          'fa fa-play-circle-o fa-lg',
          N_('View Policy Simulation for the selected items'),
          N_('Policy Simulation'),
          :url_parms => "main_div",
          :enabled   => false,
          :onwhen    => "1+"),
        button(
          :vm_tag,
          'pficon pficon-edit fa-lg',
          N_('Edit tags for the selected items'),
          N_('Edit Tags'),
          :url_parms => "main_div",
          :enabled   => false,
          :onwhen    => "1+"),
        button(
          :vm_check_compliance,
          'fa fa-search fa-lg',
          N_('Check Compliance of the last known configuration for the selected items'),
          N_('Check Compliance of Last Known Configuration'),
          :url_parms => "main_div",
          :confirm   => N_("Initiate Check Compliance of the last known configuration for the selected items?"),
          :enabled   => false,
          :onwhen    => "1+"),
      ]
    ),
  ])
  button_group('vm_lifecycle', [
    select(
      :vm_lifecycle_choice,
      'fa fa-recycle fa-lg',
      t = N_('Lifecycle'),
      t,
      :items => [
        button(
          :vm_miq_request_new,
          'pficon pficon-add-circle-o fa-lg',
          N_('Request to Provision VMs'),
          N_('Provision VMs'),
          :url_parms => "main_div"),
        button(
          :vm_clone,
          'product product-clone fa-lg',
          N_('Clone this item'),
          N_('Clone selected item'),
          :url_parms => "main_div",
          :enabled   => false,
          :onwhen    => "1",
          :klass     => ApplicationHelper::Button::BasicImage),
        button(
          :vm_publish,
          'pficon pficon-export',
          t = N_('Publish selected VM to a Template'),
          t,
          :url_parms => "main_div",
          :enabled   => false,
          :onwhen    => "1",
          :klass     => ApplicationHelper::Button::BasicImage),
        button(
          :vm_migrate,
          'product product-migrate fa-lg',
          N_('Migrate selected items to another Host/Datastore'),
          N_('Migrate selected items'),
          :url_parms => "main_div",
          :enabled   => false,
          :onwhen    => "1+"),
        button(
          :vm_retire,
          'fa fa-clock-o fa-lg',
          N_('Set Retirement Dates for the selected items'),
          N_('Set Retirement Dates'),
          :url_parms => "main_div",
          :enabled   => false,
          :onwhen    => "1+"),
        button(
          :vm_retire_now,
          'fa fa-clock-o fa-lg',
          N_('Retire the selected items'),
          N_('Retire selected items'),
          :url_parms => "main_div",
          :confirm   => N_("Retire the selected items?"),
          :enabled   => false,
          :onwhen    => "1+"),
      ]
    ),
  ])
  button_group('vm_operations', [
    select(
      :vm_power_choice,
      'fa fa-power-off fa-lg',
      N_('Power Operations'),
      N_('Power'),
      :enabled => false,
      :onwhen  => "1+",
      :items   => [
        button(
          :vm_guest_shutdown,
          nil,
          N_('Shutdown the Guest OS on the selected items'),
          N_('Shutdown Guest'),
          :image     => "guest_shutdown",
          :url_parms => "main_div",
          :confirm   => N_("Shutdown the Guest OS on the selected items?"),
          :enabled   => false,
          :onwhen    => "1+"),
        button(
          :vm_guest_restart,
          nil,
          N_('Restart the Guest OS on the selected items'),
          N_('Restart Guest'),
          :image     => "guest_restart",
          :url_parms => "main_div",
          :confirm   => N_("Restart the Guest OS on the selected items?"),
          :enabled   => false,
          :onwhen    => "1+"),
        separator,
        button(
          :vm_start,
          nil,
          N_('Power On the selected items'),
          N_('Power On'),
          :image     => "power_on",
          :url_parms => "main_div",
          :confirm   => N_("Power On the selected items?"),
          :enabled   => false,
          :onwhen    => "1+"),
        button(
          :vm_stop,
          nil,
          N_('Power Off the selected items'),
          N_('Power Off'),
          :image     => "power_off",
          :url_parms => "main_div",
          :confirm   => N_("Power Off the selected items?"),
          :enabled   => false,
          :onwhen    => "1+"),
        button(
          :vm_suspend,
          nil,
          N_('Suspend the selected items'),
          N_('Suspend'),
          :image     => "power_suspend",
          :url_parms => "main_div",
          :confirm   => N_("Suspend the selected items?"),
          :enabled   => false,
          :onwhen    => "1+"),
        button(
          :vm_reset,
          nil,
          N_('Reset the selected items'),
          N_('Reset'),
          :image     => "power_reset",
          :url_parms => "main_div",
          :confirm   => N_("Reset the selected items?"),
          :enabled   => false,
          :onwhen    => "1+"),
      ]
    ),
  ])
end
