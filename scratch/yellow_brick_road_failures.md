<pre style='color:red'>
     Failure/Error: visit '/yellow_brick_road'
     ActionController::RoutingError:
       No route matches [GET] "/yellow_brick_road"
</pre>

<pre style='color:red'>
     Failure/Error: visit '/yellow_brick_road'
     ActionController::RoutingError:
       uninitialized constant YellowBrickRoadController
</pre>


<pre style='color:red'>
     Failure/Error: visit '/yellow_brick_road'
     AbstractController::ActionNotFound:
       The action 'index' could not be found for YellowBrickRoadController
</pre>


<pre style='color:red'>
     Failure/Error: visit '/yellow_brick_road'
     ActionView::MissingTemplate:
       Missing template yellow_brick_road/index, application/index with {:handlers=>[:erb, :builder, :coffee, :haml], :formats=>[:html], :locale=>[:en, :en]}. Searched in:
         * "~/oz/app/views"
</pre>

<!SLIDE>

<pre style='color:red'>
     Failure/Error: click_link 'Battle Evil'
     Capybara::ElementNotFound:
       no link with title, id or text 'Battle Evil' found
</pre>

<pre style='color:red'>
     Failure/Error: FlyingMonkey.last.should be_defeated
     NameError:
       uninitialized constant FlyingMonkey
</pre>

<pre style='color:red'>
     Failure/Error: FlyingMonkey.last.should be_defeated
     ActiveRecord::StatementInvalid:
       Could not find table 'flying_monkeys'
</pre>

<pre style='color:red'>
     Failure/Error: FlyingMonkey.last.should be_defeated
     NoMethodError:
       undefined method `defeated?' for nil:NilClass
</pre>

<!SLIDE>

    YellowBrickRoadController GET #index should create a swarm of flying monkeys
<pre style='color:red'>
Failure/Error: FlyingMonkey.should_receive :swarm
       (<FlyingMonkey(id: integer, defeated: boolean, awesomeness: integer, created_at: datetime, updated_at: datetime) (class)>).swarm(any args)
           expected: 1 time
           received: 0 times
</pre>

<pre style='color:green'>
.

1 example, 0 failures
</pre>

    yellow brick road should let you defeat a flying monkey
<pre style='color:red'>
     Failure/Error: visit '/yellow_brick_road'
     NoMethodError:
       undefined method `swarm' for #<Class:0x007fa288474578>
</pre>

<!SLIDE>

    FlyingMonkey#swarm should create 5 flying monkeys
<pre style='color:red'>
     Failure/Error: expect { FlyingMonkey.swarm }.to change(FlyingMonkey, :count).by(1)
     NoMethodError:
       undefined method `swarm' for #<Class:0x007fbf2c53f0a0>
</pre>

<pre style='color:red'>
     Failure/Error: expect { FlyingMonkey.swarm }.to change(FlyingMonkey, :count).by(5)
       count should have been changed by 5, but was changed by 0
</pre>
<pre style='color:green'>
.

1 example, 0 failures
</pre>

    yellow brick road should let you defeat a flying monkey
<pre style='color:red'>
     Failure/Error: FlyingMonkey.last.should be_defeated
       expected defeated? to return true, got false
</pre>

<pre style='color:red'>
     Failure/Error: visit '/yellow_brick_road'
     ActionView::Template::Error:
       undefined method `defeat_flying_monkey_path' for #<#<Class:0x007fcef9dd1e98>:0x007fcef9d86f88>
</pre>

<pre style='color:red'>
     Failure/Error: click_link 'Battle Evil'
     ActionController::RoutingError:
       uninitialized constant FlyingMonkeysController
</pre>

<pre style='color:red'>
     Failure/Error: click_link 'Battle Evil'
     AbstractController::ActionNotFound:
       The action 'defeat' could not be found for FlyingMonkeysController
</pre>

<pre style='color:red'>
     Failure/Error: FlyingMonkey.last.should be_defeated
       expected defeated? to return true, got false
</pre>
