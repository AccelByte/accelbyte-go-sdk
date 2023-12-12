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

	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclientmodels"
)

// NewPublicMuteUserParams creates a new PublicMuteUserParams object
// with the default values initialized.
func NewPublicMuteUserParams() *PublicMuteUserParams {
	var ()
	return &PublicMuteUserParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicMuteUserParamsWithTimeout creates a new PublicMuteUserParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicMuteUserParamsWithTimeout(timeout time.Duration) *PublicMuteUserParams {
	var ()
	return &PublicMuteUserParams{

		timeout: timeout,
	}
}

// NewPublicMuteUserParamsWithContext creates a new PublicMuteUserParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicMuteUserParamsWithContext(ctx context.Context) *PublicMuteUserParams {
	var ()
	return &PublicMuteUserParams{

		Context: ctx,
	}
}

// NewPublicMuteUserParamsWithHTTPClient creates a new PublicMuteUserParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicMuteUserParamsWithHTTPClient(client *http.Client) *PublicMuteUserParams {
	var ()
	return &PublicMuteUserParams{
		HTTPClient: client,
	}
}

/*PublicMuteUserParams contains all the parameters to send to the API endpoint
for the public mute user operation typically these are written to a http.Request
*/
type PublicMuteUserParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *chatclientmodels.APIMuteUserRequest
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

// WithTimeout adds the timeout to the public mute user params
func (o *PublicMuteUserParams) WithTimeout(timeout time.Duration) *PublicMuteUserParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public mute user params
func (o *PublicMuteUserParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public mute user params
func (o *PublicMuteUserParams) WithContext(ctx context.Context) *PublicMuteUserParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public mute user params
func (o *PublicMuteUserParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public mute user params
func (o *PublicMuteUserParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public mute user params
func (o *PublicMuteUserParams) WithHTTPClient(client *http.Client) *PublicMuteUserParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public mute user params
func (o *PublicMuteUserParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public mute user params
func (o *PublicMuteUserParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the public mute user params
func (o *PublicMuteUserParams) WithBody(body *chatclientmodels.APIMuteUserRequest) *PublicMuteUserParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public mute user params
func (o *PublicMuteUserParams) SetBody(body *chatclientmodels.APIMuteUserRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public mute user params
func (o *PublicMuteUserParams) WithNamespace(namespace string) *PublicMuteUserParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public mute user params
func (o *PublicMuteUserParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTopic adds the topic to the public mute user params
func (o *PublicMuteUserParams) WithTopic(topic string) *PublicMuteUserParams {
	o.SetTopic(topic)
	return o
}

// SetTopic adds the topic to the public mute user params
func (o *PublicMuteUserParams) SetTopic(topic string) {
	o.Topic = topic
}

// WriteToRequest writes these params to a swagger request
func (o *PublicMuteUserParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
