// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_group

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

// NewAdminGetAllGroupsParams creates a new AdminGetAllGroupsParams object
// with the default values initialized.
func NewAdminGetAllGroupsParams() *AdminGetAllGroupsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetAllGroupsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetAllGroupsParamsWithTimeout creates a new AdminGetAllGroupsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetAllGroupsParamsWithTimeout(timeout time.Duration) *AdminGetAllGroupsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetAllGroupsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewAdminGetAllGroupsParamsWithContext creates a new AdminGetAllGroupsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetAllGroupsParamsWithContext(ctx context.Context) *AdminGetAllGroupsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetAllGroupsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewAdminGetAllGroupsParamsWithHTTPClient creates a new AdminGetAllGroupsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetAllGroupsParamsWithHTTPClient(client *http.Client) *AdminGetAllGroupsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetAllGroupsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*AdminGetAllGroupsParams contains all the parameters to send to the API endpoint
for the admin get all groups operation typically these are written to a http.Request
*/
type AdminGetAllGroupsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  user ID

	*/
	UserID string
	/*Limit
	  number of content per page

	*/
	Limit *int64
	/*Offset
	  the offset number to retrieve

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get all groups params
func (o *AdminGetAllGroupsParams) WithTimeout(timeout time.Duration) *AdminGetAllGroupsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get all groups params
func (o *AdminGetAllGroupsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get all groups params
func (o *AdminGetAllGroupsParams) WithContext(ctx context.Context) *AdminGetAllGroupsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get all groups params
func (o *AdminGetAllGroupsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get all groups params
func (o *AdminGetAllGroupsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get all groups params
func (o *AdminGetAllGroupsParams) WithHTTPClient(client *http.Client) *AdminGetAllGroupsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get all groups params
func (o *AdminGetAllGroupsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get all groups params
func (o *AdminGetAllGroupsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetAllGroupsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get all groups params
func (o *AdminGetAllGroupsParams) WithNamespace(namespace string) *AdminGetAllGroupsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get all groups params
func (o *AdminGetAllGroupsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin get all groups params
func (o *AdminGetAllGroupsParams) WithUserID(userID string) *AdminGetAllGroupsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin get all groups params
func (o *AdminGetAllGroupsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithLimit adds the limit to the admin get all groups params
func (o *AdminGetAllGroupsParams) WithLimit(limit *int64) *AdminGetAllGroupsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin get all groups params
func (o *AdminGetAllGroupsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin get all groups params
func (o *AdminGetAllGroupsParams) WithOffset(offset *int64) *AdminGetAllGroupsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin get all groups params
func (o *AdminGetAllGroupsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetAllGroupsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
