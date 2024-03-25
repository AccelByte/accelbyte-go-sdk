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

// NewAdminPlatformUnlinkAllV3Params creates a new AdminPlatformUnlinkAllV3Params object
// with the default values initialized.
func NewAdminPlatformUnlinkAllV3Params() *AdminPlatformUnlinkAllV3Params {
	var ()
	return &AdminPlatformUnlinkAllV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminPlatformUnlinkAllV3ParamsWithTimeout creates a new AdminPlatformUnlinkAllV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminPlatformUnlinkAllV3ParamsWithTimeout(timeout time.Duration) *AdminPlatformUnlinkAllV3Params {
	var ()
	return &AdminPlatformUnlinkAllV3Params{

		timeout: timeout,
	}
}

// NewAdminPlatformUnlinkAllV3ParamsWithContext creates a new AdminPlatformUnlinkAllV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminPlatformUnlinkAllV3ParamsWithContext(ctx context.Context) *AdminPlatformUnlinkAllV3Params {
	var ()
	return &AdminPlatformUnlinkAllV3Params{

		Context: ctx,
	}
}

// NewAdminPlatformUnlinkAllV3ParamsWithHTTPClient creates a new AdminPlatformUnlinkAllV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminPlatformUnlinkAllV3ParamsWithHTTPClient(client *http.Client) *AdminPlatformUnlinkAllV3Params {
	var ()
	return &AdminPlatformUnlinkAllV3Params{
		HTTPClient: client,
	}
}

/*AdminPlatformUnlinkAllV3Params contains all the parameters to send to the API endpoint
for the admin platform unlink all v3 operation typically these are written to a http.Request
*/
type AdminPlatformUnlinkAllV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*PlatformID
	  Platform ID

	*/
	PlatformID string
	/*UserID
	  User ID, should follow UUID version 4 without hyphen

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin platform unlink all v3 params
func (o *AdminPlatformUnlinkAllV3Params) WithTimeout(timeout time.Duration) *AdminPlatformUnlinkAllV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin platform unlink all v3 params
func (o *AdminPlatformUnlinkAllV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin platform unlink all v3 params
func (o *AdminPlatformUnlinkAllV3Params) WithContext(ctx context.Context) *AdminPlatformUnlinkAllV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin platform unlink all v3 params
func (o *AdminPlatformUnlinkAllV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin platform unlink all v3 params
func (o *AdminPlatformUnlinkAllV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin platform unlink all v3 params
func (o *AdminPlatformUnlinkAllV3Params) WithHTTPClient(client *http.Client) *AdminPlatformUnlinkAllV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin platform unlink all v3 params
func (o *AdminPlatformUnlinkAllV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin platform unlink all v3 params
func (o *AdminPlatformUnlinkAllV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminPlatformUnlinkAllV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin platform unlink all v3 params
func (o *AdminPlatformUnlinkAllV3Params) WithNamespace(namespace string) *AdminPlatformUnlinkAllV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin platform unlink all v3 params
func (o *AdminPlatformUnlinkAllV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the admin platform unlink all v3 params
func (o *AdminPlatformUnlinkAllV3Params) WithPlatformID(platformID string) *AdminPlatformUnlinkAllV3Params {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the admin platform unlink all v3 params
func (o *AdminPlatformUnlinkAllV3Params) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WithUserID adds the userID to the admin platform unlink all v3 params
func (o *AdminPlatformUnlinkAllV3Params) WithUserID(userID string) *AdminPlatformUnlinkAllV3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin platform unlink all v3 params
func (o *AdminPlatformUnlinkAllV3Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminPlatformUnlinkAllV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param platformId
	if err := r.SetPathParam("platformId", o.PlatformID); err != nil {
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
