import React from 'react';
import { storiesOf, action, linkTo } from '@kadira/storybook';
import Button from './Button';
import Welcome from './Welcome';
import Icon from '../app/javascript/packs/components/icon';

import '../vendor/assets/stylesheets/bootstrap.min.css';
import '../vendor/assets/stylesheets/font-awesome.min.css';
import '../app/assets/stylesheets/director.scss';


storiesOf('Welcome', module)
  .add('to Storybook', () => (
    <Welcome showApp={linkTo('Button')}/>
  ));

storiesOf('Button', module)
  .add('with text', () => (
    <Button onClick={action('clicked')}>Hello Button</Button>
  ))
  .add('with some emoji', () => (
    <Button onClick={action('clicked')}>😀 😎 👍 💯</Button>
  ));

storiesOf('Icon', module)
  .add('with some icon', () => (
    <Icon icon="" />
  ))
