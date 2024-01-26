// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_player_record

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

// NewAdminRetrievePlayerRecordsParams creates a new AdminRetrievePlayerRecordsParams object
// with the default values initialized.
func NewAdminRetrievePlayerRecordsParams() *AdminRetrievePlayerRecordsParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &AdminRetrievePlayerRecordsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminRetrievePlayerRecordsParamsWithTimeout creates a new AdminRetrievePlayerRecordsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminRetrievePlayerRecordsParamsWithTimeout(timeout time.Duration) *AdminRetrievePlayerRecordsParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &AdminRetrievePlayerRecordsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewAdminRetrievePlayerRecordsParamsWithContext creates a new AdminRetrievePlayerRecordsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminRetrievePlayerRecordsParamsWithContext(ctx context.Context) *AdminRetrievePlayerRecordsParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &AdminRetrievePlayerRecordsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewAdminRetrievePlayerRecordsParamsWithHTTPClient creates a new AdminRetrievePlayerRecordsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminRetrievePlayerRecordsParamsWithHTTPClient(client *http.Client) *AdminRetrievePlayerRecordsParams {
	var (
		limitDefault  = int64(25)
		offsetDefault = int64(0)
	)
	return &AdminRetrievePlayerRecordsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*AdminRetrievePlayerRecordsParams contains all the parameters to send to the API endpoint
for the admin retrieve player records operation typically these are written to a http.Request
*/
type AdminRetrievePlayerRecordsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  user ID who own the record, should follow UUID version 4 without hyphen format

	*/
	UserID string
	/*Limit
	  the number of data retrieved in a page, default 25

	*/
	Limit *int64
	/*Offset
	  the number of offset, default 0

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin retrieve player records params
func (o *AdminRetrievePlayerRecordsParams) WithTimeout(timeout time.Duration) *AdminRetrievePlayerRecordsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin retrieve player records params
func (o *AdminRetrievePlayerRecordsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin retrieve player records params
func (o *AdminRetrievePlayerRecordsParams) WithContext(ctx context.Context) *AdminRetrievePlayerRecordsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin retrieve player records params
func (o *AdminRetrievePlayerRecordsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin retrieve player records params
func (o *AdminRetrievePlayerRecordsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin retrieve player records params
func (o *AdminRetrievePlayerRecordsParams) WithHTTPClient(client *http.Client) *AdminRetrievePlayerRecordsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin retrieve player records params
func (o *AdminRetrievePlayerRecordsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin retrieve player records params
func (o *AdminRetrievePlayerRecordsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminRetrievePlayerRecordsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin retrieve player records params
func (o *AdminRetrievePlayerRecordsParams) WithNamespace(namespace string) *AdminRetrievePlayerRecordsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin retrieve player records params
func (o *AdminRetrievePlayerRecordsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin retrieve player records params
func (o *AdminRetrievePlayerRecordsParams) WithUserID(userID string) *AdminRetrievePlayerRecordsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin retrieve player records params
func (o *AdminRetrievePlayerRecordsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithLimit adds the limit to the admin retrieve player records params
func (o *AdminRetrievePlayerRecordsParams) WithLimit(limit *int64) *AdminRetrievePlayerRecordsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin retrieve player records params
func (o *AdminRetrievePlayerRecordsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin retrieve player records params
func (o *AdminRetrievePlayerRecordsParams) WithOffset(offset *int64) *AdminRetrievePlayerRecordsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin retrieve player records params
func (o *AdminRetrievePlayerRecordsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *AdminRetrievePlayerRecordsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
