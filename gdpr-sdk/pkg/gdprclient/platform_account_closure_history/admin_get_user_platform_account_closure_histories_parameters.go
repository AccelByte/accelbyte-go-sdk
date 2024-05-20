// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platform_account_closure_history

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

// NewAdminGetUserPlatformAccountClosureHistoriesParams creates a new AdminGetUserPlatformAccountClosureHistoriesParams object
// with the default values initialized.
func NewAdminGetUserPlatformAccountClosureHistoriesParams() *AdminGetUserPlatformAccountClosureHistoriesParams {
	var ()
	return &AdminGetUserPlatformAccountClosureHistoriesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetUserPlatformAccountClosureHistoriesParamsWithTimeout creates a new AdminGetUserPlatformAccountClosureHistoriesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetUserPlatformAccountClosureHistoriesParamsWithTimeout(timeout time.Duration) *AdminGetUserPlatformAccountClosureHistoriesParams {
	var ()
	return &AdminGetUserPlatformAccountClosureHistoriesParams{

		timeout: timeout,
	}
}

// NewAdminGetUserPlatformAccountClosureHistoriesParamsWithContext creates a new AdminGetUserPlatformAccountClosureHistoriesParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetUserPlatformAccountClosureHistoriesParamsWithContext(ctx context.Context) *AdminGetUserPlatformAccountClosureHistoriesParams {
	var ()
	return &AdminGetUserPlatformAccountClosureHistoriesParams{

		Context: ctx,
	}
}

// NewAdminGetUserPlatformAccountClosureHistoriesParamsWithHTTPClient creates a new AdminGetUserPlatformAccountClosureHistoriesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetUserPlatformAccountClosureHistoriesParamsWithHTTPClient(client *http.Client) *AdminGetUserPlatformAccountClosureHistoriesParams {
	var ()
	return &AdminGetUserPlatformAccountClosureHistoriesParams{
		HTTPClient: client,
	}
}

/*AdminGetUserPlatformAccountClosureHistoriesParams contains all the parameters to send to the API endpoint
for the admin get user platform account closure histories operation typically these are written to a http.Request
*/
type AdminGetUserPlatformAccountClosureHistoriesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*Limit
	  limit

	*/
	Limit *int64
	/*Offset
	  offset

	*/
	Offset *int64
	/*Platform
	  3rd party platform

	*/
	Platform *string
	/*UserID
	  IAM ID of the user

	*/
	UserID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get user platform account closure histories params
func (o *AdminGetUserPlatformAccountClosureHistoriesParams) WithTimeout(timeout time.Duration) *AdminGetUserPlatformAccountClosureHistoriesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get user platform account closure histories params
func (o *AdminGetUserPlatformAccountClosureHistoriesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get user platform account closure histories params
func (o *AdminGetUserPlatformAccountClosureHistoriesParams) WithContext(ctx context.Context) *AdminGetUserPlatformAccountClosureHistoriesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get user platform account closure histories params
func (o *AdminGetUserPlatformAccountClosureHistoriesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get user platform account closure histories params
func (o *AdminGetUserPlatformAccountClosureHistoriesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get user platform account closure histories params
func (o *AdminGetUserPlatformAccountClosureHistoriesParams) WithHTTPClient(client *http.Client) *AdminGetUserPlatformAccountClosureHistoriesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get user platform account closure histories params
func (o *AdminGetUserPlatformAccountClosureHistoriesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get user platform account closure histories params
func (o *AdminGetUserPlatformAccountClosureHistoriesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetUserPlatformAccountClosureHistoriesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get user platform account closure histories params
func (o *AdminGetUserPlatformAccountClosureHistoriesParams) WithNamespace(namespace string) *AdminGetUserPlatformAccountClosureHistoriesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get user platform account closure histories params
func (o *AdminGetUserPlatformAccountClosureHistoriesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the admin get user platform account closure histories params
func (o *AdminGetUserPlatformAccountClosureHistoriesParams) WithLimit(limit *int64) *AdminGetUserPlatformAccountClosureHistoriesParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin get user platform account closure histories params
func (o *AdminGetUserPlatformAccountClosureHistoriesParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin get user platform account closure histories params
func (o *AdminGetUserPlatformAccountClosureHistoriesParams) WithOffset(offset *int64) *AdminGetUserPlatformAccountClosureHistoriesParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin get user platform account closure histories params
func (o *AdminGetUserPlatformAccountClosureHistoriesParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithPlatform adds the platform to the admin get user platform account closure histories params
func (o *AdminGetUserPlatformAccountClosureHistoriesParams) WithPlatform(platform *string) *AdminGetUserPlatformAccountClosureHistoriesParams {
	o.SetPlatform(platform)
	return o
}

// SetPlatform adds the platform to the admin get user platform account closure histories params
func (o *AdminGetUserPlatformAccountClosureHistoriesParams) SetPlatform(platform *string) {
	o.Platform = platform
}

// WithUserID adds the userID to the admin get user platform account closure histories params
func (o *AdminGetUserPlatformAccountClosureHistoriesParams) WithUserID(userID *string) *AdminGetUserPlatformAccountClosureHistoriesParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin get user platform account closure histories params
func (o *AdminGetUserPlatformAccountClosureHistoriesParams) SetUserID(userID *string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetUserPlatformAccountClosureHistoriesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.Platform != nil {

		// query param platform
		var qrPlatform string
		if o.Platform != nil {
			qrPlatform = *o.Platform
		}
		qPlatform := qrPlatform
		if qPlatform != "" {
			if err := r.SetQueryParam("platform", qPlatform); err != nil {
				return err
			}
		}

	}

	if o.UserID != nil {

		// query param userId
		var qrUserID string
		if o.UserID != nil {
			qrUserID = *o.UserID
		}
		qUserID := qrUserID
		if qUserID != "" {
			if err := r.SetQueryParam("userId", qUserID); err != nil {
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
