// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package challenge_configuration

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

// NewAdminGetActiveChallengesParams creates a new AdminGetActiveChallengesParams object
// with the default values initialized.
func NewAdminGetActiveChallengesParams() *AdminGetActiveChallengesParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetActiveChallengesParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetActiveChallengesParamsWithTimeout creates a new AdminGetActiveChallengesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetActiveChallengesParamsWithTimeout(timeout time.Duration) *AdminGetActiveChallengesParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetActiveChallengesParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewAdminGetActiveChallengesParamsWithContext creates a new AdminGetActiveChallengesParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetActiveChallengesParamsWithContext(ctx context.Context) *AdminGetActiveChallengesParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetActiveChallengesParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewAdminGetActiveChallengesParamsWithHTTPClient creates a new AdminGetActiveChallengesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetActiveChallengesParamsWithHTTPClient(client *http.Client) *AdminGetActiveChallengesParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetActiveChallengesParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*AdminGetActiveChallengesParams contains all the parameters to send to the API endpoint
for the admin get active challenges operation typically these are written to a http.Request
*/
type AdminGetActiveChallengesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  user id

	*/
	UserID string
	/*Limit
	  limit the amount of data retrieved

	*/
	Limit *int64
	/*Offset
	  offset

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get active challenges params
func (o *AdminGetActiveChallengesParams) WithTimeout(timeout time.Duration) *AdminGetActiveChallengesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get active challenges params
func (o *AdminGetActiveChallengesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get active challenges params
func (o *AdminGetActiveChallengesParams) WithContext(ctx context.Context) *AdminGetActiveChallengesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get active challenges params
func (o *AdminGetActiveChallengesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get active challenges params
func (o *AdminGetActiveChallengesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get active challenges params
func (o *AdminGetActiveChallengesParams) WithHTTPClient(client *http.Client) *AdminGetActiveChallengesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get active challenges params
func (o *AdminGetActiveChallengesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get active challenges params
func (o *AdminGetActiveChallengesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetActiveChallengesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get active challenges params
func (o *AdminGetActiveChallengesParams) WithNamespace(namespace string) *AdminGetActiveChallengesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get active challenges params
func (o *AdminGetActiveChallengesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin get active challenges params
func (o *AdminGetActiveChallengesParams) WithUserID(userID string) *AdminGetActiveChallengesParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin get active challenges params
func (o *AdminGetActiveChallengesParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithLimit adds the limit to the admin get active challenges params
func (o *AdminGetActiveChallengesParams) WithLimit(limit *int64) *AdminGetActiveChallengesParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin get active challenges params
func (o *AdminGetActiveChallengesParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin get active challenges params
func (o *AdminGetActiveChallengesParams) WithOffset(offset *int64) *AdminGetActiveChallengesParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin get active challenges params
func (o *AdminGetActiveChallengesParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetActiveChallengesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
