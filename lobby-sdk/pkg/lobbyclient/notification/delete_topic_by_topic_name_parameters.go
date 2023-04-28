// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package notification

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewDeleteTopicByTopicNameParams creates a new DeleteTopicByTopicNameParams object
// with the default values initialized.
func NewDeleteTopicByTopicNameParams() *DeleteTopicByTopicNameParams {
	var ()
	return &DeleteTopicByTopicNameParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteTopicByTopicNameParamsWithTimeout creates a new DeleteTopicByTopicNameParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteTopicByTopicNameParamsWithTimeout(timeout time.Duration) *DeleteTopicByTopicNameParams {
	var ()
	return &DeleteTopicByTopicNameParams{

		timeout: timeout,
	}
}

// NewDeleteTopicByTopicNameParamsWithContext creates a new DeleteTopicByTopicNameParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteTopicByTopicNameParamsWithContext(ctx context.Context) *DeleteTopicByTopicNameParams {
	var ()
	return &DeleteTopicByTopicNameParams{

		Context: ctx,
	}
}

// NewDeleteTopicByTopicNameParamsWithHTTPClient creates a new DeleteTopicByTopicNameParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteTopicByTopicNameParamsWithHTTPClient(client *http.Client) *DeleteTopicByTopicNameParams {
	var ()
	return &DeleteTopicByTopicNameParams{
		HTTPClient: client,
	}
}

/*DeleteTopicByTopicNameParams contains all the parameters to send to the API endpoint
for the delete topic by topic name operation typically these are written to a http.Request
*/
type DeleteTopicByTopicNameParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*Topic
	  topic name

	*/
	Topic string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete topic by topic name params
func (o *DeleteTopicByTopicNameParams) WithTimeout(timeout time.Duration) *DeleteTopicByTopicNameParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete topic by topic name params
func (o *DeleteTopicByTopicNameParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete topic by topic name params
func (o *DeleteTopicByTopicNameParams) WithContext(ctx context.Context) *DeleteTopicByTopicNameParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete topic by topic name params
func (o *DeleteTopicByTopicNameParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete topic by topic name params
func (o *DeleteTopicByTopicNameParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete topic by topic name params
func (o *DeleteTopicByTopicNameParams) WithHTTPClient(client *http.Client) *DeleteTopicByTopicNameParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete topic by topic name params
func (o *DeleteTopicByTopicNameParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete topic by topic name params
func (o *DeleteTopicByTopicNameParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the delete topic by topic name params
func (o *DeleteTopicByTopicNameParams) WithNamespace(namespace string) *DeleteTopicByTopicNameParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete topic by topic name params
func (o *DeleteTopicByTopicNameParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTopic adds the topic to the delete topic by topic name params
func (o *DeleteTopicByTopicNameParams) WithTopic(topic string) *DeleteTopicByTopicNameParams {
	o.SetTopic(topic)
	return o
}

// SetTopic adds the topic to the delete topic by topic name params
func (o *DeleteTopicByTopicNameParams) SetTopic(topic string) {
	o.Topic = topic
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteTopicByTopicNameParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param topic
	if err := r.SetPathParam("topic", o.Topic); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
