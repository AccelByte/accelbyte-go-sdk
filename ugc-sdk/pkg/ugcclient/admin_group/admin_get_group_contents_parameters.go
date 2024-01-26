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

// NewAdminGetGroupContentsParams creates a new AdminGetGroupContentsParams object
// with the default values initialized.
func NewAdminGetGroupContentsParams() *AdminGetGroupContentsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetGroupContentsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetGroupContentsParamsWithTimeout creates a new AdminGetGroupContentsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetGroupContentsParamsWithTimeout(timeout time.Duration) *AdminGetGroupContentsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetGroupContentsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewAdminGetGroupContentsParamsWithContext creates a new AdminGetGroupContentsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetGroupContentsParamsWithContext(ctx context.Context) *AdminGetGroupContentsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetGroupContentsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewAdminGetGroupContentsParamsWithHTTPClient creates a new AdminGetGroupContentsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetGroupContentsParamsWithHTTPClient(client *http.Client) *AdminGetGroupContentsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminGetGroupContentsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*AdminGetGroupContentsParams contains all the parameters to send to the API endpoint
for the admin get group contents operation typically these are written to a http.Request
*/
type AdminGetGroupContentsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*GroupID
	  group ID

	*/
	GroupID string
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

// WithTimeout adds the timeout to the admin get group contents params
func (o *AdminGetGroupContentsParams) WithTimeout(timeout time.Duration) *AdminGetGroupContentsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get group contents params
func (o *AdminGetGroupContentsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get group contents params
func (o *AdminGetGroupContentsParams) WithContext(ctx context.Context) *AdminGetGroupContentsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get group contents params
func (o *AdminGetGroupContentsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get group contents params
func (o *AdminGetGroupContentsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get group contents params
func (o *AdminGetGroupContentsParams) WithHTTPClient(client *http.Client) *AdminGetGroupContentsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get group contents params
func (o *AdminGetGroupContentsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get group contents params
func (o *AdminGetGroupContentsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetGroupContentsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithGroupID adds the groupID to the admin get group contents params
func (o *AdminGetGroupContentsParams) WithGroupID(groupID string) *AdminGetGroupContentsParams {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the admin get group contents params
func (o *AdminGetGroupContentsParams) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithNamespace adds the namespace to the admin get group contents params
func (o *AdminGetGroupContentsParams) WithNamespace(namespace string) *AdminGetGroupContentsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get group contents params
func (o *AdminGetGroupContentsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin get group contents params
func (o *AdminGetGroupContentsParams) WithUserID(userID string) *AdminGetGroupContentsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin get group contents params
func (o *AdminGetGroupContentsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithLimit adds the limit to the admin get group contents params
func (o *AdminGetGroupContentsParams) WithLimit(limit *int64) *AdminGetGroupContentsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin get group contents params
func (o *AdminGetGroupContentsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin get group contents params
func (o *AdminGetGroupContentsParams) WithOffset(offset *int64) *AdminGetGroupContentsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin get group contents params
func (o *AdminGetGroupContentsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetGroupContentsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param groupId
	if err := r.SetPathParam("groupId", o.GroupID); err != nil {
		return err
	}

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
