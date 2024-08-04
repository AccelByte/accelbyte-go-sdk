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
)

// NewAdminListAllDistinctPlatformAccountsV3Params creates a new AdminListAllDistinctPlatformAccountsV3Params object
// with the default values initialized.
func NewAdminListAllDistinctPlatformAccountsV3Params() *AdminListAllDistinctPlatformAccountsV3Params {
	var ()
	return &AdminListAllDistinctPlatformAccountsV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminListAllDistinctPlatformAccountsV3ParamsWithTimeout creates a new AdminListAllDistinctPlatformAccountsV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminListAllDistinctPlatformAccountsV3ParamsWithTimeout(timeout time.Duration) *AdminListAllDistinctPlatformAccountsV3Params {
	var ()
	return &AdminListAllDistinctPlatformAccountsV3Params{

		timeout: timeout,
	}
}

// NewAdminListAllDistinctPlatformAccountsV3ParamsWithContext creates a new AdminListAllDistinctPlatformAccountsV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminListAllDistinctPlatformAccountsV3ParamsWithContext(ctx context.Context) *AdminListAllDistinctPlatformAccountsV3Params {
	var ()
	return &AdminListAllDistinctPlatformAccountsV3Params{

		Context: ctx,
	}
}

// NewAdminListAllDistinctPlatformAccountsV3ParamsWithHTTPClient creates a new AdminListAllDistinctPlatformAccountsV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminListAllDistinctPlatformAccountsV3ParamsWithHTTPClient(client *http.Client) *AdminListAllDistinctPlatformAccountsV3Params {
	var ()
	return &AdminListAllDistinctPlatformAccountsV3Params{
		HTTPClient: client,
	}
}

/*AdminListAllDistinctPlatformAccountsV3Params contains all the parameters to send to the API endpoint
for the admin list all distinct platform accounts v3 operation typically these are written to a http.Request
*/
type AdminListAllDistinctPlatformAccountsV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  User ID, should follow UUID version 4 without hyphen

	*/
	UserID string
	/*Status
	  status

	*/
	Status *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin list all distinct platform accounts v3 params
func (o *AdminListAllDistinctPlatformAccountsV3Params) WithTimeout(timeout time.Duration) *AdminListAllDistinctPlatformAccountsV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin list all distinct platform accounts v3 params
func (o *AdminListAllDistinctPlatformAccountsV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin list all distinct platform accounts v3 params
func (o *AdminListAllDistinctPlatformAccountsV3Params) WithContext(ctx context.Context) *AdminListAllDistinctPlatformAccountsV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin list all distinct platform accounts v3 params
func (o *AdminListAllDistinctPlatformAccountsV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin list all distinct platform accounts v3 params
func (o *AdminListAllDistinctPlatformAccountsV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin list all distinct platform accounts v3 params
func (o *AdminListAllDistinctPlatformAccountsV3Params) WithHTTPClient(client *http.Client) *AdminListAllDistinctPlatformAccountsV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin list all distinct platform accounts v3 params
func (o *AdminListAllDistinctPlatformAccountsV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin list all distinct platform accounts v3 params
func (o *AdminListAllDistinctPlatformAccountsV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminListAllDistinctPlatformAccountsV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin list all distinct platform accounts v3 params
func (o *AdminListAllDistinctPlatformAccountsV3Params) WithNamespace(namespace string) *AdminListAllDistinctPlatformAccountsV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin list all distinct platform accounts v3 params
func (o *AdminListAllDistinctPlatformAccountsV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin list all distinct platform accounts v3 params
func (o *AdminListAllDistinctPlatformAccountsV3Params) WithUserID(userID string) *AdminListAllDistinctPlatformAccountsV3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin list all distinct platform accounts v3 params
func (o *AdminListAllDistinctPlatformAccountsV3Params) SetUserID(userID string) {
	o.UserID = userID
}

// WithStatus adds the status to the admin list all distinct platform accounts v3 params
func (o *AdminListAllDistinctPlatformAccountsV3Params) WithStatus(status *string) *AdminListAllDistinctPlatformAccountsV3Params {
	o.SetStatus(status)
	return o
}

// SetStatus adds the status to the admin list all distinct platform accounts v3 params
func (o *AdminListAllDistinctPlatformAccountsV3Params) SetStatus(status *string) {
	o.Status = status
}

// WriteToRequest writes these params to a swagger request
func (o *AdminListAllDistinctPlatformAccountsV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.Status != nil {

		// query param status
		var qrStatus string
		if o.Status != nil {
			qrStatus = *o.Status
		}
		qStatus := qrStatus
		if qStatus != "" {
			if err := r.SetQueryParam("status", qStatus); err != nil {
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
