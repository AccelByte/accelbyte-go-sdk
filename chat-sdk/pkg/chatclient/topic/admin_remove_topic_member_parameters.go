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

// NewAdminRemoveTopicMemberParams creates a new AdminRemoveTopicMemberParams object
// with the default values initialized.
func NewAdminRemoveTopicMemberParams() *AdminRemoveTopicMemberParams {
	var ()
	return &AdminRemoveTopicMemberParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminRemoveTopicMemberParamsWithTimeout creates a new AdminRemoveTopicMemberParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminRemoveTopicMemberParamsWithTimeout(timeout time.Duration) *AdminRemoveTopicMemberParams {
	var ()
	return &AdminRemoveTopicMemberParams{

		timeout: timeout,
	}
}

// NewAdminRemoveTopicMemberParamsWithContext creates a new AdminRemoveTopicMemberParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminRemoveTopicMemberParamsWithContext(ctx context.Context) *AdminRemoveTopicMemberParams {
	var ()
	return &AdminRemoveTopicMemberParams{

		Context: ctx,
	}
}

// NewAdminRemoveTopicMemberParamsWithHTTPClient creates a new AdminRemoveTopicMemberParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminRemoveTopicMemberParamsWithHTTPClient(client *http.Client) *AdminRemoveTopicMemberParams {
	var ()
	return &AdminRemoveTopicMemberParams{
		HTTPClient: client,
	}
}

/*AdminRemoveTopicMemberParams contains all the parameters to send to the API endpoint
for the admin remove topic member operation typically these are written to a http.Request
*/
type AdminRemoveTopicMemberParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*Topic
	  topic ID that will removed user from

	*/
	Topic string
	/*UserID
	  user ID that will be removed from topic

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin remove topic member params
func (o *AdminRemoveTopicMemberParams) WithTimeout(timeout time.Duration) *AdminRemoveTopicMemberParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin remove topic member params
func (o *AdminRemoveTopicMemberParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin remove topic member params
func (o *AdminRemoveTopicMemberParams) WithContext(ctx context.Context) *AdminRemoveTopicMemberParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin remove topic member params
func (o *AdminRemoveTopicMemberParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin remove topic member params
func (o *AdminRemoveTopicMemberParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin remove topic member params
func (o *AdminRemoveTopicMemberParams) WithHTTPClient(client *http.Client) *AdminRemoveTopicMemberParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin remove topic member params
func (o *AdminRemoveTopicMemberParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin remove topic member params
func (o *AdminRemoveTopicMemberParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminRemoveTopicMemberParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin remove topic member params
func (o *AdminRemoveTopicMemberParams) WithNamespace(namespace string) *AdminRemoveTopicMemberParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin remove topic member params
func (o *AdminRemoveTopicMemberParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTopic adds the topic to the admin remove topic member params
func (o *AdminRemoveTopicMemberParams) WithTopic(topic string) *AdminRemoveTopicMemberParams {
	o.SetTopic(topic)
	return o
}

// SetTopic adds the topic to the admin remove topic member params
func (o *AdminRemoveTopicMemberParams) SetTopic(topic string) {
	o.Topic = topic
}

// WithUserID adds the userID to the admin remove topic member params
func (o *AdminRemoveTopicMemberParams) WithUserID(userID string) *AdminRemoveTopicMemberParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin remove topic member params
func (o *AdminRemoveTopicMemberParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminRemoveTopicMemberParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
