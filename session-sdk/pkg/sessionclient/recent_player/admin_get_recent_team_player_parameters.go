// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package recent_player

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

// NewAdminGetRecentTeamPlayerParams creates a new AdminGetRecentTeamPlayerParams object
// with the default values initialized.
func NewAdminGetRecentTeamPlayerParams() *AdminGetRecentTeamPlayerParams {
	var (
		limitDefault = int64(20)
	)
	return &AdminGetRecentTeamPlayerParams{
		Limit: &limitDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetRecentTeamPlayerParamsWithTimeout creates a new AdminGetRecentTeamPlayerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetRecentTeamPlayerParamsWithTimeout(timeout time.Duration) *AdminGetRecentTeamPlayerParams {
	var (
		limitDefault = int64(20)
	)
	return &AdminGetRecentTeamPlayerParams{
		Limit: &limitDefault,

		timeout: timeout,
	}
}

// NewAdminGetRecentTeamPlayerParamsWithContext creates a new AdminGetRecentTeamPlayerParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetRecentTeamPlayerParamsWithContext(ctx context.Context) *AdminGetRecentTeamPlayerParams {
	var (
		limitDefault = int64(20)
	)
	return &AdminGetRecentTeamPlayerParams{
		Limit: &limitDefault,

		Context: ctx,
	}
}

// NewAdminGetRecentTeamPlayerParamsWithHTTPClient creates a new AdminGetRecentTeamPlayerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetRecentTeamPlayerParamsWithHTTPClient(client *http.Client) *AdminGetRecentTeamPlayerParams {
	var (
		limitDefault = int64(20)
	)
	return &AdminGetRecentTeamPlayerParams{
		Limit:      &limitDefault,
		HTTPClient: client,
	}
}

/*AdminGetRecentTeamPlayerParams contains all the parameters to send to the API endpoint
for the admin get recent team player operation typically these are written to a http.Request
*/
type AdminGetRecentTeamPlayerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Limit
	  Recent Player Limit

	*/
	Limit *int64
	/*UserID
	  recent team player UserID. If this field empty, will use UserID from token

	*/
	UserID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get recent team player params
func (o *AdminGetRecentTeamPlayerParams) WithTimeout(timeout time.Duration) *AdminGetRecentTeamPlayerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get recent team player params
func (o *AdminGetRecentTeamPlayerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get recent team player params
func (o *AdminGetRecentTeamPlayerParams) WithContext(ctx context.Context) *AdminGetRecentTeamPlayerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get recent team player params
func (o *AdminGetRecentTeamPlayerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get recent team player params
func (o *AdminGetRecentTeamPlayerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get recent team player params
func (o *AdminGetRecentTeamPlayerParams) WithHTTPClient(client *http.Client) *AdminGetRecentTeamPlayerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get recent team player params
func (o *AdminGetRecentTeamPlayerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get recent team player params
func (o *AdminGetRecentTeamPlayerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetRecentTeamPlayerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get recent team player params
func (o *AdminGetRecentTeamPlayerParams) WithNamespace(namespace string) *AdminGetRecentTeamPlayerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get recent team player params
func (o *AdminGetRecentTeamPlayerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the admin get recent team player params
func (o *AdminGetRecentTeamPlayerParams) WithLimit(limit *int64) *AdminGetRecentTeamPlayerParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin get recent team player params
func (o *AdminGetRecentTeamPlayerParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithUserID adds the userID to the admin get recent team player params
func (o *AdminGetRecentTeamPlayerParams) WithUserID(userID *string) *AdminGetRecentTeamPlayerParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin get recent team player params
func (o *AdminGetRecentTeamPlayerParams) SetUserID(userID *string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetRecentTeamPlayerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
