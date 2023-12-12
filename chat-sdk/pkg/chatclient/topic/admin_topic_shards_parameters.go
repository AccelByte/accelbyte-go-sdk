// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package topic

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

// NewAdminTopicShardsParams creates a new AdminTopicShardsParams object
// with the default values initialized.
func NewAdminTopicShardsParams() *AdminTopicShardsParams {
	var ()
	return &AdminTopicShardsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminTopicShardsParamsWithTimeout creates a new AdminTopicShardsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminTopicShardsParamsWithTimeout(timeout time.Duration) *AdminTopicShardsParams {
	var ()
	return &AdminTopicShardsParams{

		timeout: timeout,
	}
}

// NewAdminTopicShardsParamsWithContext creates a new AdminTopicShardsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminTopicShardsParamsWithContext(ctx context.Context) *AdminTopicShardsParams {
	var ()
	return &AdminTopicShardsParams{

		Context: ctx,
	}
}

// NewAdminTopicShardsParamsWithHTTPClient creates a new AdminTopicShardsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminTopicShardsParamsWithHTTPClient(client *http.Client) *AdminTopicShardsParams {
	var ()
	return &AdminTopicShardsParams{
		HTTPClient: client,
	}
}

/*AdminTopicShardsParams contains all the parameters to send to the API endpoint
for the admin topic shards operation typically these are written to a http.Request
*/
type AdminTopicShardsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*Topic
	  topic ID

	*/
	Topic string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin topic shards params
func (o *AdminTopicShardsParams) WithTimeout(timeout time.Duration) *AdminTopicShardsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin topic shards params
func (o *AdminTopicShardsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin topic shards params
func (o *AdminTopicShardsParams) WithContext(ctx context.Context) *AdminTopicShardsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin topic shards params
func (o *AdminTopicShardsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin topic shards params
func (o *AdminTopicShardsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin topic shards params
func (o *AdminTopicShardsParams) WithHTTPClient(client *http.Client) *AdminTopicShardsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin topic shards params
func (o *AdminTopicShardsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin topic shards params
func (o *AdminTopicShardsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin topic shards params
func (o *AdminTopicShardsParams) WithNamespace(namespace string) *AdminTopicShardsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin topic shards params
func (o *AdminTopicShardsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTopic adds the topic to the admin topic shards params
func (o *AdminTopicShardsParams) WithTopic(topic string) *AdminTopicShardsParams {
	o.SetTopic(topic)
	return o
}

// SetTopic adds the topic to the admin topic shards params
func (o *AdminTopicShardsParams) SetTopic(topic string) {
	o.Topic = topic
}

// WriteToRequest writes these params to a swagger request
func (o *AdminTopicShardsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
