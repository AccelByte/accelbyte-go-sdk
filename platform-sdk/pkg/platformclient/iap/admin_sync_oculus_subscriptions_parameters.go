// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewAdminSyncOculusSubscriptionsParams creates a new AdminSyncOculusSubscriptionsParams object
// with the default values initialized.
func NewAdminSyncOculusSubscriptionsParams() *AdminSyncOculusSubscriptionsParams {
	var ()
	return &AdminSyncOculusSubscriptionsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminSyncOculusSubscriptionsParamsWithTimeout creates a new AdminSyncOculusSubscriptionsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminSyncOculusSubscriptionsParamsWithTimeout(timeout time.Duration) *AdminSyncOculusSubscriptionsParams {
	var ()
	return &AdminSyncOculusSubscriptionsParams{

		timeout: timeout,
	}
}

// NewAdminSyncOculusSubscriptionsParamsWithContext creates a new AdminSyncOculusSubscriptionsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminSyncOculusSubscriptionsParamsWithContext(ctx context.Context) *AdminSyncOculusSubscriptionsParams {
	var ()
	return &AdminSyncOculusSubscriptionsParams{

		Context: ctx,
	}
}

// NewAdminSyncOculusSubscriptionsParamsWithHTTPClient creates a new AdminSyncOculusSubscriptionsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminSyncOculusSubscriptionsParamsWithHTTPClient(client *http.Client) *AdminSyncOculusSubscriptionsParams {
	var ()
	return &AdminSyncOculusSubscriptionsParams{
		HTTPClient: client,
	}
}

/*AdminSyncOculusSubscriptionsParams contains all the parameters to send to the API endpoint
for the admin sync oculus subscriptions operation typically these are written to a http.Request
*/
type AdminSyncOculusSubscriptionsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.OculusSubscriptionSyncRequest
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin sync oculus subscriptions params
func (o *AdminSyncOculusSubscriptionsParams) WithTimeout(timeout time.Duration) *AdminSyncOculusSubscriptionsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin sync oculus subscriptions params
func (o *AdminSyncOculusSubscriptionsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin sync oculus subscriptions params
func (o *AdminSyncOculusSubscriptionsParams) WithContext(ctx context.Context) *AdminSyncOculusSubscriptionsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin sync oculus subscriptions params
func (o *AdminSyncOculusSubscriptionsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin sync oculus subscriptions params
func (o *AdminSyncOculusSubscriptionsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin sync oculus subscriptions params
func (o *AdminSyncOculusSubscriptionsParams) WithHTTPClient(client *http.Client) *AdminSyncOculusSubscriptionsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin sync oculus subscriptions params
func (o *AdminSyncOculusSubscriptionsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin sync oculus subscriptions params
func (o *AdminSyncOculusSubscriptionsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminSyncOculusSubscriptionsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin sync oculus subscriptions params
func (o *AdminSyncOculusSubscriptionsParams) WithBody(body *platformclientmodels.OculusSubscriptionSyncRequest) *AdminSyncOculusSubscriptionsParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin sync oculus subscriptions params
func (o *AdminSyncOculusSubscriptionsParams) SetBody(body *platformclientmodels.OculusSubscriptionSyncRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin sync oculus subscriptions params
func (o *AdminSyncOculusSubscriptionsParams) WithNamespace(namespace string) *AdminSyncOculusSubscriptionsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin sync oculus subscriptions params
func (o *AdminSyncOculusSubscriptionsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin sync oculus subscriptions params
func (o *AdminSyncOculusSubscriptionsParams) WithUserID(userID string) *AdminSyncOculusSubscriptionsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin sync oculus subscriptions params
func (o *AdminSyncOculusSubscriptionsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminSyncOculusSubscriptionsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
