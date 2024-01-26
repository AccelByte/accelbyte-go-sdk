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

// NewAdminQueryThirdPlatformLinkHistoryV3Params creates a new AdminQueryThirdPlatformLinkHistoryV3Params object
// with the default values initialized.
func NewAdminQueryThirdPlatformLinkHistoryV3Params() *AdminQueryThirdPlatformLinkHistoryV3Params {
	var ()
	return &AdminQueryThirdPlatformLinkHistoryV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminQueryThirdPlatformLinkHistoryV3ParamsWithTimeout creates a new AdminQueryThirdPlatformLinkHistoryV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminQueryThirdPlatformLinkHistoryV3ParamsWithTimeout(timeout time.Duration) *AdminQueryThirdPlatformLinkHistoryV3Params {
	var ()
	return &AdminQueryThirdPlatformLinkHistoryV3Params{

		timeout: timeout,
	}
}

// NewAdminQueryThirdPlatformLinkHistoryV3ParamsWithContext creates a new AdminQueryThirdPlatformLinkHistoryV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminQueryThirdPlatformLinkHistoryV3ParamsWithContext(ctx context.Context) *AdminQueryThirdPlatformLinkHistoryV3Params {
	var ()
	return &AdminQueryThirdPlatformLinkHistoryV3Params{

		Context: ctx,
	}
}

// NewAdminQueryThirdPlatformLinkHistoryV3ParamsWithHTTPClient creates a new AdminQueryThirdPlatformLinkHistoryV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminQueryThirdPlatformLinkHistoryV3ParamsWithHTTPClient(client *http.Client) *AdminQueryThirdPlatformLinkHistoryV3Params {
	var ()
	return &AdminQueryThirdPlatformLinkHistoryV3Params{
		HTTPClient: client,
	}
}

/*AdminQueryThirdPlatformLinkHistoryV3Params contains all the parameters to send to the API endpoint
for the admin query third platform link history v3 operation typically these are written to a http.Request
*/
type AdminQueryThirdPlatformLinkHistoryV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*Limit
	  the maximum number of data that may be returned (1...100), default 100

	*/
	Limit *int64
	/*Offset
	  Offset, default 0

	*/
	Offset *int64
	/*PlatformUserID
	  Platform user id

	*/
	PlatformUserID *string
	/*PlatformID
	  Platform Id that want to be searched, supported values: steam, steamopenid, psn, xbox, epicgames, nintendo, oculus, aws cognito, facebook, google, discord, twitch, snapchat or amazon

	*/
	PlatformID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin query third platform link history v3 params
func (o *AdminQueryThirdPlatformLinkHistoryV3Params) WithTimeout(timeout time.Duration) *AdminQueryThirdPlatformLinkHistoryV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin query third platform link history v3 params
func (o *AdminQueryThirdPlatformLinkHistoryV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin query third platform link history v3 params
func (o *AdminQueryThirdPlatformLinkHistoryV3Params) WithContext(ctx context.Context) *AdminQueryThirdPlatformLinkHistoryV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin query third platform link history v3 params
func (o *AdminQueryThirdPlatformLinkHistoryV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin query third platform link history v3 params
func (o *AdminQueryThirdPlatformLinkHistoryV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin query third platform link history v3 params
func (o *AdminQueryThirdPlatformLinkHistoryV3Params) WithHTTPClient(client *http.Client) *AdminQueryThirdPlatformLinkHistoryV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin query third platform link history v3 params
func (o *AdminQueryThirdPlatformLinkHistoryV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin query third platform link history v3 params
func (o *AdminQueryThirdPlatformLinkHistoryV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminQueryThirdPlatformLinkHistoryV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin query third platform link history v3 params
func (o *AdminQueryThirdPlatformLinkHistoryV3Params) WithNamespace(namespace string) *AdminQueryThirdPlatformLinkHistoryV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin query third platform link history v3 params
func (o *AdminQueryThirdPlatformLinkHistoryV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the admin query third platform link history v3 params
func (o *AdminQueryThirdPlatformLinkHistoryV3Params) WithLimit(limit *int64) *AdminQueryThirdPlatformLinkHistoryV3Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin query third platform link history v3 params
func (o *AdminQueryThirdPlatformLinkHistoryV3Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin query third platform link history v3 params
func (o *AdminQueryThirdPlatformLinkHistoryV3Params) WithOffset(offset *int64) *AdminQueryThirdPlatformLinkHistoryV3Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin query third platform link history v3 params
func (o *AdminQueryThirdPlatformLinkHistoryV3Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithPlatformUserID adds the platformUserID to the admin query third platform link history v3 params
func (o *AdminQueryThirdPlatformLinkHistoryV3Params) WithPlatformUserID(platformUserID *string) *AdminQueryThirdPlatformLinkHistoryV3Params {
	o.SetPlatformUserID(platformUserID)
	return o
}

// SetPlatformUserID adds the platformUserId to the admin query third platform link history v3 params
func (o *AdminQueryThirdPlatformLinkHistoryV3Params) SetPlatformUserID(platformUserID *string) {
	o.PlatformUserID = platformUserID
}

// WithPlatformID adds the platformID to the admin query third platform link history v3 params
func (o *AdminQueryThirdPlatformLinkHistoryV3Params) WithPlatformID(platformID string) *AdminQueryThirdPlatformLinkHistoryV3Params {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the admin query third platform link history v3 params
func (o *AdminQueryThirdPlatformLinkHistoryV3Params) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminQueryThirdPlatformLinkHistoryV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	if o.PlatformUserID != nil {

		// query param platformUserId
		var qrPlatformUserID string
		if o.PlatformUserID != nil {
			qrPlatformUserID = *o.PlatformUserID
		}
		qPlatformUserID := qrPlatformUserID
		if qPlatformUserID != "" {
			if err := r.SetQueryParam("platformUserId", qPlatformUserID); err != nil {
				return err
			}
		}

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
