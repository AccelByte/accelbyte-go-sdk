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

// NewAdminUnbanTopicMembersParams creates a new AdminUnbanTopicMembersParams object
// with the default values initialized.
func NewAdminUnbanTopicMembersParams() *AdminUnbanTopicMembersParams {
	var ()
	return &AdminUnbanTopicMembersParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUnbanTopicMembersParamsWithTimeout creates a new AdminUnbanTopicMembersParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUnbanTopicMembersParamsWithTimeout(timeout time.Duration) *AdminUnbanTopicMembersParams {
	var ()
	return &AdminUnbanTopicMembersParams{

		timeout: timeout,
	}
}

// NewAdminUnbanTopicMembersParamsWithContext creates a new AdminUnbanTopicMembersParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUnbanTopicMembersParamsWithContext(ctx context.Context) *AdminUnbanTopicMembersParams {
	var ()
	return &AdminUnbanTopicMembersParams{

		Context: ctx,
	}
}

// NewAdminUnbanTopicMembersParamsWithHTTPClient creates a new AdminUnbanTopicMembersParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUnbanTopicMembersParamsWithHTTPClient(client *http.Client) *AdminUnbanTopicMembersParams {
	var ()
	return &AdminUnbanTopicMembersParams{
		HTTPClient: client,
	}
}

/*AdminUnbanTopicMembersParams contains all the parameters to send to the API endpoint
for the admin unban topic members operation typically these are written to a http.Request
*/
type AdminUnbanTopicMembersParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *chatclientmodels.ModelsUnbanTopicMemberParam
	/*Namespace
	  namespace

	*/
	Namespace string
	/*Topic
	  topic ID that receive the chat

	*/
	Topic string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin unban topic members params
func (o *AdminUnbanTopicMembersParams) WithTimeout(timeout time.Duration) *AdminUnbanTopicMembersParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin unban topic members params
func (o *AdminUnbanTopicMembersParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin unban topic members params
func (o *AdminUnbanTopicMembersParams) WithContext(ctx context.Context) *AdminUnbanTopicMembersParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin unban topic members params
func (o *AdminUnbanTopicMembersParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin unban topic members params
func (o *AdminUnbanTopicMembersParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin unban topic members params
func (o *AdminUnbanTopicMembersParams) WithHTTPClient(client *http.Client) *AdminUnbanTopicMembersParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin unban topic members params
func (o *AdminUnbanTopicMembersParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin unban topic members params
func (o *AdminUnbanTopicMembersParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin unban topic members params
func (o *AdminUnbanTopicMembersParams) WithBody(body *chatclientmodels.ModelsUnbanTopicMemberParam) *AdminUnbanTopicMembersParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin unban topic members params
func (o *AdminUnbanTopicMembersParams) SetBody(body *chatclientmodels.ModelsUnbanTopicMemberParam) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin unban topic members params
func (o *AdminUnbanTopicMembersParams) WithNamespace(namespace string) *AdminUnbanTopicMembersParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin unban topic members params
func (o *AdminUnbanTopicMembersParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTopic adds the topic to the admin unban topic members params
func (o *AdminUnbanTopicMembersParams) WithTopic(topic string) *AdminUnbanTopicMembersParams {
	o.SetTopic(topic)
	return o
}

// SetTopic adds the topic to the admin unban topic members params
func (o *AdminUnbanTopicMembersParams) SetTopic(topic string) {
	o.Topic = topic
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUnbanTopicMembersParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
