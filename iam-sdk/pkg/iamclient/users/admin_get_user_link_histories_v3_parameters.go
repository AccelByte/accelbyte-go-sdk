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

// NewAdminGetUserLinkHistoriesV3Params creates a new AdminGetUserLinkHistoriesV3Params object
// with the default values initialized.
func NewAdminGetUserLinkHistoriesV3Params() *AdminGetUserLinkHistoriesV3Params {
	var ()
	return &AdminGetUserLinkHistoriesV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetUserLinkHistoriesV3ParamsWithTimeout creates a new AdminGetUserLinkHistoriesV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetUserLinkHistoriesV3ParamsWithTimeout(timeout time.Duration) *AdminGetUserLinkHistoriesV3Params {
	var ()
	return &AdminGetUserLinkHistoriesV3Params{

		timeout: timeout,
	}
}

// NewAdminGetUserLinkHistoriesV3ParamsWithContext creates a new AdminGetUserLinkHistoriesV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetUserLinkHistoriesV3ParamsWithContext(ctx context.Context) *AdminGetUserLinkHistoriesV3Params {
	var ()
	return &AdminGetUserLinkHistoriesV3Params{

		Context: ctx,
	}
}

// NewAdminGetUserLinkHistoriesV3ParamsWithHTTPClient creates a new AdminGetUserLinkHistoriesV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetUserLinkHistoriesV3ParamsWithHTTPClient(client *http.Client) *AdminGetUserLinkHistoriesV3Params {
	var ()
	return &AdminGetUserLinkHistoriesV3Params{
		HTTPClient: client,
	}
}

/*AdminGetUserLinkHistoriesV3Params contains all the parameters to send to the API endpoint
for the admin get user link histories v3 operation typically these are written to a http.Request
*/
type AdminGetUserLinkHistoriesV3Params struct {

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
	/*PlatformID
	  Target platform id

	*/
	PlatformID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get user link histories v3 params
func (o *AdminGetUserLinkHistoriesV3Params) WithTimeout(timeout time.Duration) *AdminGetUserLinkHistoriesV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get user link histories v3 params
func (o *AdminGetUserLinkHistoriesV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get user link histories v3 params
func (o *AdminGetUserLinkHistoriesV3Params) WithContext(ctx context.Context) *AdminGetUserLinkHistoriesV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get user link histories v3 params
func (o *AdminGetUserLinkHistoriesV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get user link histories v3 params
func (o *AdminGetUserLinkHistoriesV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get user link histories v3 params
func (o *AdminGetUserLinkHistoriesV3Params) WithHTTPClient(client *http.Client) *AdminGetUserLinkHistoriesV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get user link histories v3 params
func (o *AdminGetUserLinkHistoriesV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get user link histories v3 params
func (o *AdminGetUserLinkHistoriesV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetUserLinkHistoriesV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get user link histories v3 params
func (o *AdminGetUserLinkHistoriesV3Params) WithNamespace(namespace string) *AdminGetUserLinkHistoriesV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get user link histories v3 params
func (o *AdminGetUserLinkHistoriesV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin get user link histories v3 params
func (o *AdminGetUserLinkHistoriesV3Params) WithUserID(userID string) *AdminGetUserLinkHistoriesV3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin get user link histories v3 params
func (o *AdminGetUserLinkHistoriesV3Params) SetUserID(userID string) {
	o.UserID = userID
}

// WithPlatformID adds the platformID to the admin get user link histories v3 params
func (o *AdminGetUserLinkHistoriesV3Params) WithPlatformID(platformID string) *AdminGetUserLinkHistoriesV3Params {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the admin get user link histories v3 params
func (o *AdminGetUserLinkHistoriesV3Params) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetUserLinkHistoriesV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// query param platformId
	qrPlatformID := o.PlatformID
	qPlatformID := qrPlatformID
	if qPlatformID != "" {
		if err := r.SetQueryParam("platformId", qPlatformID); err != nil {
			return err
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
