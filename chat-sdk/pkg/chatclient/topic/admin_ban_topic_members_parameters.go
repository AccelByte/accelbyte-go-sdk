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

// NewAdminBanTopicMembersParams creates a new AdminBanTopicMembersParams object
// with the default values initialized.
func NewAdminBanTopicMembersParams() *AdminBanTopicMembersParams {
	var ()
	return &AdminBanTopicMembersParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminBanTopicMembersParamsWithTimeout creates a new AdminBanTopicMembersParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminBanTopicMembersParamsWithTimeout(timeout time.Duration) *AdminBanTopicMembersParams {
	var ()
	return &AdminBanTopicMembersParams{

		timeout: timeout,
	}
}

// NewAdminBanTopicMembersParamsWithContext creates a new AdminBanTopicMembersParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminBanTopicMembersParamsWithContext(ctx context.Context) *AdminBanTopicMembersParams {
	var ()
	return &AdminBanTopicMembersParams{

		Context: ctx,
	}
}

// NewAdminBanTopicMembersParamsWithHTTPClient creates a new AdminBanTopicMembersParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminBanTopicMembersParamsWithHTTPClient(client *http.Client) *AdminBanTopicMembersParams {
	var ()
	return &AdminBanTopicMembersParams{
		HTTPClient: client,
	}
}

/*AdminBanTopicMembersParams contains all the parameters to send to the API endpoint
for the admin ban topic members operation typically these are written to a http.Request
*/
type AdminBanTopicMembersParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *chatclientmodels.ModelsBanTopicMemberParam
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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin ban topic members params
func (o *AdminBanTopicMembersParams) WithTimeout(timeout time.Duration) *AdminBanTopicMembersParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin ban topic members params
func (o *AdminBanTopicMembersParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin ban topic members params
func (o *AdminBanTopicMembersParams) WithContext(ctx context.Context) *AdminBanTopicMembersParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin ban topic members params
func (o *AdminBanTopicMembersParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin ban topic members params
func (o *AdminBanTopicMembersParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin ban topic members params
func (o *AdminBanTopicMembersParams) WithHTTPClient(client *http.Client) *AdminBanTopicMembersParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin ban topic members params
func (o *AdminBanTopicMembersParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin ban topic members params
func (o *AdminBanTopicMembersParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminBanTopicMembersParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin ban topic members params
func (o *AdminBanTopicMembersParams) WithBody(body *chatclientmodels.ModelsBanTopicMemberParam) *AdminBanTopicMembersParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin ban topic members params
func (o *AdminBanTopicMembersParams) SetBody(body *chatclientmodels.ModelsBanTopicMemberParam) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin ban topic members params
func (o *AdminBanTopicMembersParams) WithNamespace(namespace string) *AdminBanTopicMembersParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin ban topic members params
func (o *AdminBanTopicMembersParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTopic adds the topic to the admin ban topic members params
func (o *AdminBanTopicMembersParams) WithTopic(topic string) *AdminBanTopicMembersParams {
	o.SetTopic(topic)
	return o
}

// SetTopic adds the topic to the admin ban topic members params
func (o *AdminBanTopicMembersParams) SetTopic(topic string) {
	o.Topic = topic
}

// WriteToRequest writes these params to a swagger request
func (o *AdminBanTopicMembersParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
