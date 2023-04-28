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

// NewGetGroupJoinRequestPublicV2Params creates a new GetGroupJoinRequestPublicV2Params object
// with the default values initialized.
func NewGetGroupJoinRequestPublicV2Params() *GetGroupJoinRequestPublicV2Params {
	var ()
	return &GetGroupJoinRequestPublicV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetGroupJoinRequestPublicV2ParamsWithTimeout creates a new GetGroupJoinRequestPublicV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetGroupJoinRequestPublicV2ParamsWithTimeout(timeout time.Duration) *GetGroupJoinRequestPublicV2Params {
	var ()
	return &GetGroupJoinRequestPublicV2Params{

		timeout: timeout,
	}
}

// NewGetGroupJoinRequestPublicV2ParamsWithContext creates a new GetGroupJoinRequestPublicV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetGroupJoinRequestPublicV2ParamsWithContext(ctx context.Context) *GetGroupJoinRequestPublicV2Params {
	var ()
	return &GetGroupJoinRequestPublicV2Params{

		Context: ctx,
	}
}

// NewGetGroupJoinRequestPublicV2ParamsWithHTTPClient creates a new GetGroupJoinRequestPublicV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetGroupJoinRequestPublicV2ParamsWithHTTPClient(client *http.Client) *GetGroupJoinRequestPublicV2Params {
	var ()
	return &GetGroupJoinRequestPublicV2Params{
		HTTPClient: client,
	}
}

/*GetGroupJoinRequestPublicV2Params contains all the parameters to send to the API endpoint
for the get group join request public v2 operation typically these are written to a http.Request
*/
type GetGroupJoinRequestPublicV2Params struct {

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
}

// WithTimeout adds the timeout to the get group join request public v2 params
func (o *GetGroupJoinRequestPublicV2Params) WithTimeout(timeout time.Duration) *GetGroupJoinRequestPublicV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get group join request public v2 params
func (o *GetGroupJoinRequestPublicV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get group join request public v2 params
func (o *GetGroupJoinRequestPublicV2Params) WithContext(ctx context.Context) *GetGroupJoinRequestPublicV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get group join request public v2 params
func (o *GetGroupJoinRequestPublicV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get group join request public v2 params
func (o *GetGroupJoinRequestPublicV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get group join request public v2 params
func (o *GetGroupJoinRequestPublicV2Params) WithHTTPClient(client *http.Client) *GetGroupJoinRequestPublicV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get group join request public v2 params
func (o *GetGroupJoinRequestPublicV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get group join request public v2 params
func (o *GetGroupJoinRequestPublicV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithGroupID adds the groupID to the get group join request public v2 params
func (o *GetGroupJoinRequestPublicV2Params) WithGroupID(groupID string) *GetGroupJoinRequestPublicV2Params {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the get group join request public v2 params
func (o *GetGroupJoinRequestPublicV2Params) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithNamespace adds the namespace to the get group join request public v2 params
func (o *GetGroupJoinRequestPublicV2Params) WithNamespace(namespace string) *GetGroupJoinRequestPublicV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get group join request public v2 params
func (o *GetGroupJoinRequestPublicV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the get group join request public v2 params
func (o *GetGroupJoinRequestPublicV2Params) WithLimit(limit *int64) *GetGroupJoinRequestPublicV2Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get group join request public v2 params
func (o *GetGroupJoinRequestPublicV2Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get group join request public v2 params
func (o *GetGroupJoinRequestPublicV2Params) WithOffset(offset *int64) *GetGroupJoinRequestPublicV2Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get group join request public v2 params
func (o *GetGroupJoinRequestPublicV2Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetGroupJoinRequestPublicV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
