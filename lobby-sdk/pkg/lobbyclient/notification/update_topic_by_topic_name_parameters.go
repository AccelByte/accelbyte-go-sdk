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

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// NewUpdateTopicByTopicNameParams creates a new UpdateTopicByTopicNameParams object
// with the default values initialized.
func NewUpdateTopicByTopicNameParams() *UpdateTopicByTopicNameParams {
	var ()
	return &UpdateTopicByTopicNameParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateTopicByTopicNameParamsWithTimeout creates a new UpdateTopicByTopicNameParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateTopicByTopicNameParamsWithTimeout(timeout time.Duration) *UpdateTopicByTopicNameParams {
	var ()
	return &UpdateTopicByTopicNameParams{

		timeout: timeout,
	}
}

// NewUpdateTopicByTopicNameParamsWithContext creates a new UpdateTopicByTopicNameParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateTopicByTopicNameParamsWithContext(ctx context.Context) *UpdateTopicByTopicNameParams {
	var ()
	return &UpdateTopicByTopicNameParams{

		Context: ctx,
	}
}

// NewUpdateTopicByTopicNameParamsWithHTTPClient creates a new UpdateTopicByTopicNameParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateTopicByTopicNameParamsWithHTTPClient(client *http.Client) *UpdateTopicByTopicNameParams {
	var ()
	return &UpdateTopicByTopicNameParams{
		HTTPClient: client,
	}
}

/*UpdateTopicByTopicNameParams contains all the parameters to send to the API endpoint
for the update topic by topic name operation typically these are written to a http.Request
*/
type UpdateTopicByTopicNameParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *lobbyclientmodels.ModelUpdateTopicRequest
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

// WithTimeout adds the timeout to the update topic by topic name params
func (o *UpdateTopicByTopicNameParams) WithTimeout(timeout time.Duration) *UpdateTopicByTopicNameParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update topic by topic name params
func (o *UpdateTopicByTopicNameParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update topic by topic name params
func (o *UpdateTopicByTopicNameParams) WithContext(ctx context.Context) *UpdateTopicByTopicNameParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update topic by topic name params
func (o *UpdateTopicByTopicNameParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update topic by topic name params
func (o *UpdateTopicByTopicNameParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update topic by topic name params
func (o *UpdateTopicByTopicNameParams) WithHTTPClient(client *http.Client) *UpdateTopicByTopicNameParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update topic by topic name params
func (o *UpdateTopicByTopicNameParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update topic by topic name params
func (o *UpdateTopicByTopicNameParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update topic by topic name params
func (o *UpdateTopicByTopicNameParams) WithBody(body *lobbyclientmodels.ModelUpdateTopicRequest) *UpdateTopicByTopicNameParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update topic by topic name params
func (o *UpdateTopicByTopicNameParams) SetBody(body *lobbyclientmodels.ModelUpdateTopicRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the update topic by topic name params
func (o *UpdateTopicByTopicNameParams) WithNamespace(namespace string) *UpdateTopicByTopicNameParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update topic by topic name params
func (o *UpdateTopicByTopicNameParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTopic adds the topic to the update topic by topic name params
func (o *UpdateTopicByTopicNameParams) WithTopic(topic string) *UpdateTopicByTopicNameParams {
	o.SetTopic(topic)
	return o
}

// SetTopic adds the topic to the update topic by topic name params
func (o *UpdateTopicByTopicNameParams) SetTopic(topic string) {
	o.Topic = topic
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateTopicByTopicNameParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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
