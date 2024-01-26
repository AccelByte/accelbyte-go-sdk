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

// NewAdminAddTopicMemberParams creates a new AdminAddTopicMemberParams object
// with the default values initialized.
func NewAdminAddTopicMemberParams() *AdminAddTopicMemberParams {
	var ()
	return &AdminAddTopicMemberParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminAddTopicMemberParamsWithTimeout creates a new AdminAddTopicMemberParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminAddTopicMemberParamsWithTimeout(timeout time.Duration) *AdminAddTopicMemberParams {
	var ()
	return &AdminAddTopicMemberParams{

		timeout: timeout,
	}
}

// NewAdminAddTopicMemberParamsWithContext creates a new AdminAddTopicMemberParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminAddTopicMemberParamsWithContext(ctx context.Context) *AdminAddTopicMemberParams {
	var ()
	return &AdminAddTopicMemberParams{

		Context: ctx,
	}
}

// NewAdminAddTopicMemberParamsWithHTTPClient creates a new AdminAddTopicMemberParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminAddTopicMemberParamsWithHTTPClient(client *http.Client) *AdminAddTopicMemberParams {
	var ()
	return &AdminAddTopicMemberParams{
		HTTPClient: client,
	}
}

/*AdminAddTopicMemberParams contains all the parameters to send to the API endpoint
for the admin add topic member operation typically these are written to a http.Request
*/
type AdminAddTopicMemberParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *chatclientmodels.APIAddMemberParams
	/*Namespace
	  namespace

	*/
	Namespace string
	/*Topic
	  topic ID that will added user to

	*/
	Topic string
	/*UserID
	  user ID that will be added to topic

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin add topic member params
func (o *AdminAddTopicMemberParams) WithTimeout(timeout time.Duration) *AdminAddTopicMemberParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin add topic member params
func (o *AdminAddTopicMemberParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin add topic member params
func (o *AdminAddTopicMemberParams) WithContext(ctx context.Context) *AdminAddTopicMemberParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin add topic member params
func (o *AdminAddTopicMemberParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin add topic member params
func (o *AdminAddTopicMemberParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin add topic member params
func (o *AdminAddTopicMemberParams) WithHTTPClient(client *http.Client) *AdminAddTopicMemberParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin add topic member params
func (o *AdminAddTopicMemberParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin add topic member params
func (o *AdminAddTopicMemberParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminAddTopicMemberParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin add topic member params
func (o *AdminAddTopicMemberParams) WithBody(body *chatclientmodels.APIAddMemberParams) *AdminAddTopicMemberParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin add topic member params
func (o *AdminAddTopicMemberParams) SetBody(body *chatclientmodels.APIAddMemberParams) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin add topic member params
func (o *AdminAddTopicMemberParams) WithNamespace(namespace string) *AdminAddTopicMemberParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin add topic member params
func (o *AdminAddTopicMemberParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTopic adds the topic to the admin add topic member params
func (o *AdminAddTopicMemberParams) WithTopic(topic string) *AdminAddTopicMemberParams {
	o.SetTopic(topic)
	return o
}

// SetTopic adds the topic to the admin add topic member params
func (o *AdminAddTopicMemberParams) SetTopic(topic string) {
	o.Topic = topic
}

// WithUserID adds the userID to the admin add topic member params
func (o *AdminAddTopicMemberParams) WithUserID(userID string) *AdminAddTopicMemberParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin add topic member params
func (o *AdminAddTopicMemberParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminAddTopicMemberParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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
