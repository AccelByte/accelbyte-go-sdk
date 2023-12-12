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

// NewPublicBanTopicMembersParams creates a new PublicBanTopicMembersParams object
// with the default values initialized.
func NewPublicBanTopicMembersParams() *PublicBanTopicMembersParams {
	var ()
	return &PublicBanTopicMembersParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicBanTopicMembersParamsWithTimeout creates a new PublicBanTopicMembersParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicBanTopicMembersParamsWithTimeout(timeout time.Duration) *PublicBanTopicMembersParams {
	var ()
	return &PublicBanTopicMembersParams{

		timeout: timeout,
	}
}

// NewPublicBanTopicMembersParamsWithContext creates a new PublicBanTopicMembersParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicBanTopicMembersParamsWithContext(ctx context.Context) *PublicBanTopicMembersParams {
	var ()
	return &PublicBanTopicMembersParams{

		Context: ctx,
	}
}

// NewPublicBanTopicMembersParamsWithHTTPClient creates a new PublicBanTopicMembersParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicBanTopicMembersParamsWithHTTPClient(client *http.Client) *PublicBanTopicMembersParams {
	var ()
	return &PublicBanTopicMembersParams{
		HTTPClient: client,
	}
}

/*PublicBanTopicMembersParams contains all the parameters to send to the API endpoint
for the public ban topic members operation typically these are written to a http.Request
*/
type PublicBanTopicMembersParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *chatclientmodels.ModelsPublicBanTopicMembersRequest
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

// WithTimeout adds the timeout to the public ban topic members params
func (o *PublicBanTopicMembersParams) WithTimeout(timeout time.Duration) *PublicBanTopicMembersParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public ban topic members params
func (o *PublicBanTopicMembersParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public ban topic members params
func (o *PublicBanTopicMembersParams) WithContext(ctx context.Context) *PublicBanTopicMembersParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public ban topic members params
func (o *PublicBanTopicMembersParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public ban topic members params
func (o *PublicBanTopicMembersParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public ban topic members params
func (o *PublicBanTopicMembersParams) WithHTTPClient(client *http.Client) *PublicBanTopicMembersParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public ban topic members params
func (o *PublicBanTopicMembersParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public ban topic members params
func (o *PublicBanTopicMembersParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the public ban topic members params
func (o *PublicBanTopicMembersParams) WithBody(body *chatclientmodels.ModelsPublicBanTopicMembersRequest) *PublicBanTopicMembersParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public ban topic members params
func (o *PublicBanTopicMembersParams) SetBody(body *chatclientmodels.ModelsPublicBanTopicMembersRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public ban topic members params
func (o *PublicBanTopicMembersParams) WithNamespace(namespace string) *PublicBanTopicMembersParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public ban topic members params
func (o *PublicBanTopicMembersParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTopic adds the topic to the public ban topic members params
func (o *PublicBanTopicMembersParams) WithTopic(topic string) *PublicBanTopicMembersParams {
	o.SetTopic(topic)
	return o
}

// SetTopic adds the topic to the public ban topic members params
func (o *PublicBanTopicMembersParams) SetTopic(topic string) {
	o.Topic = topic
}

// WriteToRequest writes these params to a swagger request
func (o *PublicBanTopicMembersParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
