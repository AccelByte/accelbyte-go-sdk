// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_group

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

// NewGetGroupContentParams creates a new GetGroupContentParams object
// with the default values initialized.
func NewGetGroupContentParams() *GetGroupContentParams {
	var (
		limitDefault  = int64(1000)
		offsetDefault = int64(0)
	)
	return &GetGroupContentParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetGroupContentParamsWithTimeout creates a new GetGroupContentParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetGroupContentParamsWithTimeout(timeout time.Duration) *GetGroupContentParams {
	var (
		limitDefault  = int64(1000)
		offsetDefault = int64(0)
	)
	return &GetGroupContentParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewGetGroupContentParamsWithContext creates a new GetGroupContentParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetGroupContentParamsWithContext(ctx context.Context) *GetGroupContentParams {
	var (
		limitDefault  = int64(1000)
		offsetDefault = int64(0)
	)
	return &GetGroupContentParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewGetGroupContentParamsWithHTTPClient creates a new GetGroupContentParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetGroupContentParamsWithHTTPClient(client *http.Client) *GetGroupContentParams {
	var (
		limitDefault  = int64(1000)
		offsetDefault = int64(0)
	)
	return &GetGroupContentParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*GetGroupContentParams contains all the parameters to send to the API endpoint
for the get group content operation typically these are written to a http.Request
*/
type GetGroupContentParams struct {

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
}

// WithTimeout adds the timeout to the get group content params
func (o *GetGroupContentParams) WithTimeout(timeout time.Duration) *GetGroupContentParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get group content params
func (o *GetGroupContentParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get group content params
func (o *GetGroupContentParams) WithContext(ctx context.Context) *GetGroupContentParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get group content params
func (o *GetGroupContentParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get group content params
func (o *GetGroupContentParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get group content params
func (o *GetGroupContentParams) WithHTTPClient(client *http.Client) *GetGroupContentParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get group content params
func (o *GetGroupContentParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get group content params
func (o *GetGroupContentParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithGroupID adds the groupID to the get group content params
func (o *GetGroupContentParams) WithGroupID(groupID string) *GetGroupContentParams {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the get group content params
func (o *GetGroupContentParams) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithNamespace adds the namespace to the get group content params
func (o *GetGroupContentParams) WithNamespace(namespace string) *GetGroupContentParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get group content params
func (o *GetGroupContentParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get group content params
func (o *GetGroupContentParams) WithUserID(userID string) *GetGroupContentParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get group content params
func (o *GetGroupContentParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithLimit adds the limit to the get group content params
func (o *GetGroupContentParams) WithLimit(limit *int64) *GetGroupContentParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get group content params
func (o *GetGroupContentParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get group content params
func (o *GetGroupContentParams) WithOffset(offset *int64) *GetGroupContentParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get group content params
func (o *GetGroupContentParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetGroupContentParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
