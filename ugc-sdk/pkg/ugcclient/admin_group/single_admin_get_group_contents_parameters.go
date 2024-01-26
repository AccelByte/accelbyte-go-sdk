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

// NewSingleAdminGetGroupContentsParams creates a new SingleAdminGetGroupContentsParams object
// with the default values initialized.
func NewSingleAdminGetGroupContentsParams() *SingleAdminGetGroupContentsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &SingleAdminGetGroupContentsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewSingleAdminGetGroupContentsParamsWithTimeout creates a new SingleAdminGetGroupContentsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSingleAdminGetGroupContentsParamsWithTimeout(timeout time.Duration) *SingleAdminGetGroupContentsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &SingleAdminGetGroupContentsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewSingleAdminGetGroupContentsParamsWithContext creates a new SingleAdminGetGroupContentsParams object
// with the default values initialized, and the ability to set a context for a request
func NewSingleAdminGetGroupContentsParamsWithContext(ctx context.Context) *SingleAdminGetGroupContentsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &SingleAdminGetGroupContentsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewSingleAdminGetGroupContentsParamsWithHTTPClient creates a new SingleAdminGetGroupContentsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSingleAdminGetGroupContentsParamsWithHTTPClient(client *http.Client) *SingleAdminGetGroupContentsParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &SingleAdminGetGroupContentsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*SingleAdminGetGroupContentsParams contains all the parameters to send to the API endpoint
for the single admin get group contents operation typically these are written to a http.Request
*/
type SingleAdminGetGroupContentsParams struct {

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

// WithTimeout adds the timeout to the single admin get group contents params
func (o *SingleAdminGetGroupContentsParams) WithTimeout(timeout time.Duration) *SingleAdminGetGroupContentsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the single admin get group contents params
func (o *SingleAdminGetGroupContentsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the single admin get group contents params
func (o *SingleAdminGetGroupContentsParams) WithContext(ctx context.Context) *SingleAdminGetGroupContentsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the single admin get group contents params
func (o *SingleAdminGetGroupContentsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the single admin get group contents params
func (o *SingleAdminGetGroupContentsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the single admin get group contents params
func (o *SingleAdminGetGroupContentsParams) WithHTTPClient(client *http.Client) *SingleAdminGetGroupContentsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the single admin get group contents params
func (o *SingleAdminGetGroupContentsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the single admin get group contents params
func (o *SingleAdminGetGroupContentsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SingleAdminGetGroupContentsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithGroupID adds the groupID to the single admin get group contents params
func (o *SingleAdminGetGroupContentsParams) WithGroupID(groupID string) *SingleAdminGetGroupContentsParams {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the single admin get group contents params
func (o *SingleAdminGetGroupContentsParams) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithNamespace adds the namespace to the single admin get group contents params
func (o *SingleAdminGetGroupContentsParams) WithNamespace(namespace string) *SingleAdminGetGroupContentsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the single admin get group contents params
func (o *SingleAdminGetGroupContentsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the single admin get group contents params
func (o *SingleAdminGetGroupContentsParams) WithLimit(limit *int64) *SingleAdminGetGroupContentsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the single admin get group contents params
func (o *SingleAdminGetGroupContentsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the single admin get group contents params
func (o *SingleAdminGetGroupContentsParams) WithOffset(offset *int64) *SingleAdminGetGroupContentsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the single admin get group contents params
func (o *SingleAdminGetGroupContentsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *SingleAdminGetGroupContentsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
