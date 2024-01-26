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

// NewGetGroupJoinRequestPublicV1Params creates a new GetGroupJoinRequestPublicV1Params object
// with the default values initialized.
func NewGetGroupJoinRequestPublicV1Params() *GetGroupJoinRequestPublicV1Params {
	var ()
	return &GetGroupJoinRequestPublicV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetGroupJoinRequestPublicV1ParamsWithTimeout creates a new GetGroupJoinRequestPublicV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetGroupJoinRequestPublicV1ParamsWithTimeout(timeout time.Duration) *GetGroupJoinRequestPublicV1Params {
	var ()
	return &GetGroupJoinRequestPublicV1Params{

		timeout: timeout,
	}
}

// NewGetGroupJoinRequestPublicV1ParamsWithContext creates a new GetGroupJoinRequestPublicV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetGroupJoinRequestPublicV1ParamsWithContext(ctx context.Context) *GetGroupJoinRequestPublicV1Params {
	var ()
	return &GetGroupJoinRequestPublicV1Params{

		Context: ctx,
	}
}

// NewGetGroupJoinRequestPublicV1ParamsWithHTTPClient creates a new GetGroupJoinRequestPublicV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetGroupJoinRequestPublicV1ParamsWithHTTPClient(client *http.Client) *GetGroupJoinRequestPublicV1Params {
	var ()
	return &GetGroupJoinRequestPublicV1Params{
		HTTPClient: client,
	}
}

/*GetGroupJoinRequestPublicV1Params contains all the parameters to send to the API endpoint
for the get group join request public v1 operation typically these are written to a http.Request
*/
type GetGroupJoinRequestPublicV1Params struct {

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

// WithTimeout adds the timeout to the get group join request public v1 params
func (o *GetGroupJoinRequestPublicV1Params) WithTimeout(timeout time.Duration) *GetGroupJoinRequestPublicV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get group join request public v1 params
func (o *GetGroupJoinRequestPublicV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get group join request public v1 params
func (o *GetGroupJoinRequestPublicV1Params) WithContext(ctx context.Context) *GetGroupJoinRequestPublicV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get group join request public v1 params
func (o *GetGroupJoinRequestPublicV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get group join request public v1 params
func (o *GetGroupJoinRequestPublicV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get group join request public v1 params
func (o *GetGroupJoinRequestPublicV1Params) WithHTTPClient(client *http.Client) *GetGroupJoinRequestPublicV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get group join request public v1 params
func (o *GetGroupJoinRequestPublicV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get group join request public v1 params
func (o *GetGroupJoinRequestPublicV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetGroupJoinRequestPublicV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithGroupID adds the groupID to the get group join request public v1 params
func (o *GetGroupJoinRequestPublicV1Params) WithGroupID(groupID string) *GetGroupJoinRequestPublicV1Params {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the get group join request public v1 params
func (o *GetGroupJoinRequestPublicV1Params) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithNamespace adds the namespace to the get group join request public v1 params
func (o *GetGroupJoinRequestPublicV1Params) WithNamespace(namespace string) *GetGroupJoinRequestPublicV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get group join request public v1 params
func (o *GetGroupJoinRequestPublicV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the get group join request public v1 params
func (o *GetGroupJoinRequestPublicV1Params) WithLimit(limit *int64) *GetGroupJoinRequestPublicV1Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get group join request public v1 params
func (o *GetGroupJoinRequestPublicV1Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get group join request public v1 params
func (o *GetGroupJoinRequestPublicV1Params) WithOffset(offset *int64) *GetGroupJoinRequestPublicV1Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get group join request public v1 params
func (o *GetGroupJoinRequestPublicV1Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetGroupJoinRequestPublicV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
