    <div class="sidebar" data-color="purple" data-background-color="white" data-image="../assets/img/sidebar-1.jpg">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
      -->
      <div class="logo"><a href="http://127.0.0.1:8000/" class="simple-text logo-normal">
          STORE SMART PHONE
        </a></div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item {{ Request::is('dashboard') ? 'active':''}}">
            <a class="nav-link" href="{{ url('dashboard') }}">
              <i class="material-icons">dashboard</i>
              <p>Dashboard</p>
            </a>
          </li>
          <li class="nav-item {{ Request::is('categories') ? 'active':''}}">
            <a class="nav-link" href="{{ url('categories') }}">
              <i class="material-icons">list</i>
              <p>Categories</p>
            </a>
          </li>
          <li class="nav-item {{ Request::is('add-category') ? 'active':''}} ">
            <a class="nav-link" href="{{ url('add-category') }}">
              <i class="material-icons">add</i>
              <p>Add Category</p>
            </a>
          </li>
          <li class="nav-item {{ Request::is('products') ? 'active':''}}">
            <a class="nav-link" href="{{ url('products') }}">
              <i class="material-icons">list</i>
              <p>Products</p>
            </a>
          </li>
          <li class="nav-item {{ Request::is('add-products') ? 'active':''}} ">
            <a class="nav-link" href="{{ url('add-products') }}">
              <i class="material-icons">add</i>
              <p>Add Products</p>
            </a>
          </li>
          <li class="nav-item {{ Request::is('orders') ? 'active':''}} ">
            <a class="nav-link" href="{{ url('orders') }}">
              <i class="material-icons">check</i>
              <p>Orders</p>
            </a>
          </li>
          <li class="nav-item {{ Request::is('users') ? 'active':''}} ">
            <a class="nav-link" href="{{ url('users') }}">
              <i class="material-icons">person</i>
              <p>Users</p>
            </a>
          </li>
        </ul>
      </div>
    </div>