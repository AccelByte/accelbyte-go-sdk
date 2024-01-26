// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewAdminGetUserBanV2Params creates a new AdminGetUserBanV2Params object
// with the default values initialized.
func NewAdminGetUserBanV2Params() *AdminGetUserBanV2Params {
	var ()
	return &AdminGetUserBanV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetUserBanV2ParamsWithTimeout creates a new AdminGetUserBanV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetUserBanV2ParamsWithTimeout(timeout time.Duration) *AdminGetUserBanV2Params {
	var ()
	return &AdminGetUserBanV2Params{

		timeout: timeout,
	}
}

// NewAdminGetUserBanV2ParamsWithContext creates a new AdminGetUserBanV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetUserBanV2ParamsWithContext(ctx context.Context) *AdminGetUserBanV2Params {
	var ()
	return &AdminGetUserBanV2Params{

		Context: ctx,
	}
}

// NewAdminGetUserBanV2ParamsWithHTTPClient creates a new AdminGetUserBanV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetUserBanV2ParamsWithHTTPClient(client *http.Client) *AdminGetUserBanV2Params {
	var ()
	return &AdminGetUserBanV2Params{
		HTTPClient: client,
	}
}

/*AdminGetUserBanV2Params contains all the parameters to send to the API endpoint
for the admin get user ban v2 operation typically these are written to a http.Request
*/
type AdminGetUserBanV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*UserID
	  User ID

	*/
	UserID string
	/*ActiveOnly
	  Filter ban to only returns the active one

	*/
	ActiveOnly *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get user ban v2 params
func (o *AdminGetUserBanV2Params) WithTimeout(timeout time.Duration) *AdminGetUserBanV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get user ban v2 params
func (o *AdminGetUserBanV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get user ban v2 params
func (o *AdminGetUserBanV2Params) WithContext(ctx context.Context) *AdminGetUserBanV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get user ban v2 params
func (o *AdminGetUserBanV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get user ban v2 params
func (o *AdminGetUserBanV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get user ban v2 params
func (o *AdminGetUserBanV2Params) WithHTTPClient(client *http.Client) *AdminGetUserBanV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get user ban v2 params
func (o *AdminGetUserBanV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get user ban v2 params
func (o *AdminGetUserBanV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetUserBanV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get user ban v2 params
func (o *AdminGetUserBanV2Params) WithNamespace(namespace string) *AdminGetUserBanV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get user ban v2 params
func (o *AdminGetUserBanV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin get user ban v2 params
func (o *AdminGetUserBanV2Params) WithUserID(userID string) *AdminGetUserBanV2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin get user ban v2 params
func (o *AdminGetUserBanV2Params) SetUserID(userID string) {
	o.UserID = userID
}

// WithActiveOnly adds the activeOnly to the admin get user ban v2 params
func (o *AdminGetUserBanV2Params) WithActiveOnly(activeOnly *bool) *AdminGetUserBanV2Params {
	o.SetActiveOnly(activeOnly)
	return o
}

// SetActiveOnly adds the activeOnly to the admin get user ban v2 params
func (o *AdminGetUserBanV2Params) SetActiveOnly(activeOnly *bool) {
	o.ActiveOnly = activeOnly
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetUserBanV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	if o.ActiveOnly != nil {

		// query param activeOnly
		var qrActiveOnly bool
		if o.ActiveOnly != nil {
			qrActiveOnly = *o.ActiveOnly
		}
		qActiveOnly := swag.FormatBool(qrActiveOnly)
		if qActiveOnly != "" {
			if err := r.SetQueryParam("activeOnly", qActiveOnly); err != nil {
				return err
			}
		}

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
