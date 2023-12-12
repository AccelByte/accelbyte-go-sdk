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

// NewPublicUnbanTopicMembersParams creates a new PublicUnbanTopicMembersParams object
// with the default values initialized.
func NewPublicUnbanTopicMembersParams() *PublicUnbanTopicMembersParams {
	var ()
	return &PublicUnbanTopicMembersParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicUnbanTopicMembersParamsWithTimeout creates a new PublicUnbanTopicMembersParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicUnbanTopicMembersParamsWithTimeout(timeout time.Duration) *PublicUnbanTopicMembersParams {
	var ()
	return &PublicUnbanTopicMembersParams{

		timeout: timeout,
	}
}

// NewPublicUnbanTopicMembersParamsWithContext creates a new PublicUnbanTopicMembersParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicUnbanTopicMembersParamsWithContext(ctx context.Context) *PublicUnbanTopicMembersParams {
	var ()
	return &PublicUnbanTopicMembersParams{

		Context: ctx,
	}
}

// NewPublicUnbanTopicMembersParamsWithHTTPClient creates a new PublicUnbanTopicMembersParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicUnbanTopicMembersParamsWithHTTPClient(client *http.Client) *PublicUnbanTopicMembersParams {
	var ()
	return &PublicUnbanTopicMembersParams{
		HTTPClient: client,
	}
}

/*PublicUnbanTopicMembersParams contains all the parameters to send to the API endpoint
for the public unban topic members operation typically these are written to a http.Request
*/
type PublicUnbanTopicMembersParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *chatclientmodels.ModelsPublicUnbanTopicMembersRequest
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

// WithTimeout adds the timeout to the public unban topic members params
func (o *PublicUnbanTopicMembersParams) WithTimeout(timeout time.Duration) *PublicUnbanTopicMembersParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public unban topic members params
func (o *PublicUnbanTopicMembersParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public unban topic members params
func (o *PublicUnbanTopicMembersParams) WithContext(ctx context.Context) *PublicUnbanTopicMembersParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public unban topic members params
func (o *PublicUnbanTopicMembersParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public unban topic members params
func (o *PublicUnbanTopicMembersParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public unban topic members params
func (o *PublicUnbanTopicMembersParams) WithHTTPClient(client *http.Client) *PublicUnbanTopicMembersParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public unban topic members params
func (o *PublicUnbanTopicMembersParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public unban topic members params
func (o *PublicUnbanTopicMembersParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the public unban topic members params
func (o *PublicUnbanTopicMembersParams) WithBody(body *chatclientmodels.ModelsPublicUnbanTopicMembersRequest) *PublicUnbanTopicMembersParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public unban topic members params
func (o *PublicUnbanTopicMembersParams) SetBody(body *chatclientmodels.ModelsPublicUnbanTopicMembersRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public unban topic members params
func (o *PublicUnbanTopicMembersParams) WithNamespace(namespace string) *PublicUnbanTopicMembersParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public unban topic members params
func (o *PublicUnbanTopicMembersParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTopic adds the topic to the public unban topic members params
func (o *PublicUnbanTopicMembersParams) WithTopic(topic string) *PublicUnbanTopicMembersParams {
	o.SetTopic(topic)
	return o
}

// SetTopic adds the topic to the public unban topic members params
func (o *PublicUnbanTopicMembersParams) SetTopic(topic string) {
	o.Topic = topic
}

// WriteToRequest writes these params to a swagger request
func (o *PublicUnbanTopicMembersParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
