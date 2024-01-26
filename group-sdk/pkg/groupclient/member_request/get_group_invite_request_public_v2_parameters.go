// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package member_request

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

// NewGetGroupInviteRequestPublicV2Params creates a new GetGroupInviteRequestPublicV2Params object
// with the default values initialized.
func NewGetGroupInviteRequestPublicV2Params() *GetGroupInviteRequestPublicV2Params {
	var ()
	return &GetGroupInviteRequestPublicV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetGroupInviteRequestPublicV2ParamsWithTimeout creates a new GetGroupInviteRequestPublicV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetGroupInviteRequestPublicV2ParamsWithTimeout(timeout time.Duration) *GetGroupInviteRequestPublicV2Params {
	var ()
	return &GetGroupInviteRequestPublicV2Params{

		timeout: timeout,
	}
}

// NewGetGroupInviteRequestPublicV2ParamsWithContext creates a new GetGroupInviteRequestPublicV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetGroupInviteRequestPublicV2ParamsWithContext(ctx context.Context) *GetGroupInviteRequestPublicV2Params {
	var ()
	return &GetGroupInviteRequestPublicV2Params{

		Context: ctx,
	}
}

// NewGetGroupInviteRequestPublicV2ParamsWithHTTPClient creates a new GetGroupInviteRequestPublicV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetGroupInviteRequestPublicV2ParamsWithHTTPClient(client *http.Client) *GetGroupInviteRequestPublicV2Params {
	var ()
	return &GetGroupInviteRequestPublicV2Params{
		HTTPClient: client,
	}
}

/*GetGroupInviteRequestPublicV2Params contains all the parameters to send to the API endpoint
for the get group invite request public v2 operation typically these are written to a http.Request
*/
type GetGroupInviteRequestPublicV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*GroupID
	  Group ID

	*/
	GroupID string
	/*Namespace
	  namespace

	*/
	Namespace string
	/*Limit
	  size of displayed data

	*/
	Limit *int64
	/*Offset
	  The start position that points to query data

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get group invite request public v2 params
func (o *GetGroupInviteRequestPublicV2Params) WithTimeout(timeout time.Duration) *GetGroupInviteRequestPublicV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get group invite request public v2 params
func (o *GetGroupInviteRequestPublicV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get group invite request public v2 params
func (o *GetGroupInviteRequestPublicV2Params) WithContext(ctx context.Context) *GetGroupInviteRequestPublicV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get group invite request public v2 params
func (o *GetGroupInviteRequestPublicV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get group invite request public v2 params
func (o *GetGroupInviteRequestPublicV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get group invite request public v2 params
func (o *GetGroupInviteRequestPublicV2Params) WithHTTPClient(client *http.Client) *GetGroupInviteRequestPublicV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get group invite request public v2 params
func (o *GetGroupInviteRequestPublicV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get group invite request public v2 params
func (o *GetGroupInviteRequestPublicV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetGroupInviteRequestPublicV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithGroupID adds the groupID to the get group invite request public v2 params
func (o *GetGroupInviteRequestPublicV2Params) WithGroupID(groupID string) *GetGroupInviteRequestPublicV2Params {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the get group invite request public v2 params
func (o *GetGroupInviteRequestPublicV2Params) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithNamespace adds the namespace to the get group invite request public v2 params
func (o *GetGroupInviteRequestPublicV2Params) WithNamespace(namespace string) *GetGroupInviteRequestPublicV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get group invite request public v2 params
func (o *GetGroupInviteRequestPublicV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the get group invite request public v2 params
func (o *GetGroupInviteRequestPublicV2Params) WithLimit(limit *int64) *GetGroupInviteRequestPublicV2Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get group invite request public v2 params
func (o *GetGroupInviteRequestPublicV2Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get group invite request public v2 params
func (o *GetGroupInviteRequestPublicV2Params) WithOffset(offset *int64) *GetGroupInviteRequestPublicV2Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get group invite request public v2 params
func (o *GetGroupInviteRequestPublicV2Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetGroupInviteRequestPublicV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
