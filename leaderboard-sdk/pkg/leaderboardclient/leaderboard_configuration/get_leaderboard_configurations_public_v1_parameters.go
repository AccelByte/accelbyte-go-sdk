// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package leaderboard_configuration

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

// NewGetLeaderboardConfigurationsPublicV1Params creates a new GetLeaderboardConfigurationsPublicV1Params object
// with the default values initialized.
func NewGetLeaderboardConfigurationsPublicV1Params() *GetLeaderboardConfigurationsPublicV1Params {
	var ()
	return &GetLeaderboardConfigurationsPublicV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetLeaderboardConfigurationsPublicV1ParamsWithTimeout creates a new GetLeaderboardConfigurationsPublicV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetLeaderboardConfigurationsPublicV1ParamsWithTimeout(timeout time.Duration) *GetLeaderboardConfigurationsPublicV1Params {
	var ()
	return &GetLeaderboardConfigurationsPublicV1Params{

		timeout: timeout,
	}
}

// NewGetLeaderboardConfigurationsPublicV1ParamsWithContext creates a new GetLeaderboardConfigurationsPublicV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetLeaderboardConfigurationsPublicV1ParamsWithContext(ctx context.Context) *GetLeaderboardConfigurationsPublicV1Params {
	var ()
	return &GetLeaderboardConfigurationsPublicV1Params{

		Context: ctx,
	}
}

// NewGetLeaderboardConfigurationsPublicV1ParamsWithHTTPClient creates a new GetLeaderboardConfigurationsPublicV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetLeaderboardConfigurationsPublicV1ParamsWithHTTPClient(client *http.Client) *GetLeaderboardConfigurationsPublicV1Params {
	var ()
	return &GetLeaderboardConfigurationsPublicV1Params{
		HTTPClient: client,
	}
}

/*GetLeaderboardConfigurationsPublicV1Params contains all the parameters to send to the API endpoint
for the get leaderboard configurations public v1 operation typically these are written to a http.Request
*/
type GetLeaderboardConfigurationsPublicV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*IsArchived
	  filter for archived leaderboard

	*/
	IsArchived *bool
	/*IsDeleted
	  filter for deleted leaderboard config

	*/
	IsDeleted *bool
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

// WithTimeout adds the timeout to the get leaderboard configurations public v1 params
func (o *GetLeaderboardConfigurationsPublicV1Params) WithTimeout(timeout time.Duration) *GetLeaderboardConfigurationsPublicV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get leaderboard configurations public v1 params
func (o *GetLeaderboardConfigurationsPublicV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get leaderboard configurations public v1 params
func (o *GetLeaderboardConfigurationsPublicV1Params) WithContext(ctx context.Context) *GetLeaderboardConfigurationsPublicV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get leaderboard configurations public v1 params
func (o *GetLeaderboardConfigurationsPublicV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get leaderboard configurations public v1 params
func (o *GetLeaderboardConfigurationsPublicV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get leaderboard configurations public v1 params
func (o *GetLeaderboardConfigurationsPublicV1Params) WithHTTPClient(client *http.Client) *GetLeaderboardConfigurationsPublicV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get leaderboard configurations public v1 params
func (o *GetLeaderboardConfigurationsPublicV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get leaderboard configurations public v1 params
func (o *GetLeaderboardConfigurationsPublicV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get leaderboard configurations public v1 params
func (o *GetLeaderboardConfigurationsPublicV1Params) WithNamespace(namespace string) *GetLeaderboardConfigurationsPublicV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get leaderboard configurations public v1 params
func (o *GetLeaderboardConfigurationsPublicV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithIsArchived adds the isArchived to the get leaderboard configurations public v1 params
func (o *GetLeaderboardConfigurationsPublicV1Params) WithIsArchived(isArchived *bool) *GetLeaderboardConfigurationsPublicV1Params {
	o.SetIsArchived(isArchived)
	return o
}

// SetIsArchived adds the isArchived to the get leaderboard configurations public v1 params
func (o *GetLeaderboardConfigurationsPublicV1Params) SetIsArchived(isArchived *bool) {
	o.IsArchived = isArchived
}

// WithIsDeleted adds the isDeleted to the get leaderboard configurations public v1 params
func (o *GetLeaderboardConfigurationsPublicV1Params) WithIsDeleted(isDeleted *bool) *GetLeaderboardConfigurationsPublicV1Params {
	o.SetIsDeleted(isDeleted)
	return o
}

// SetIsDeleted adds the isDeleted to the get leaderboard configurations public v1 params
func (o *GetLeaderboardConfigurationsPublicV1Params) SetIsDeleted(isDeleted *bool) {
	o.IsDeleted = isDeleted
}

// WithLimit adds the limit to the get leaderboard configurations public v1 params
func (o *GetLeaderboardConfigurationsPublicV1Params) WithLimit(limit *int64) *GetLeaderboardConfigurationsPublicV1Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get leaderboard configurations public v1 params
func (o *GetLeaderboardConfigurationsPublicV1Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get leaderboard configurations public v1 params
func (o *GetLeaderboardConfigurationsPublicV1Params) WithOffset(offset *int64) *GetLeaderboardConfigurationsPublicV1Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get leaderboard configurations public v1 params
func (o *GetLeaderboardConfigurationsPublicV1Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetLeaderboardConfigurationsPublicV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.IsArchived != nil {

		// query param isArchived
		var qrIsArchived bool
		if o.IsArchived != nil {
			qrIsArchived = *o.IsArchived
		}
		qIsArchived := swag.FormatBool(qrIsArchived)
		if qIsArchived != "" {
			if err := r.SetQueryParam("isArchived", qIsArchived); err != nil {
				return err
			}
		}

	}

	if o.IsDeleted != nil {

		// query param isDeleted
		var qrIsDeleted bool
		if o.IsDeleted != nil {
			qrIsDeleted = *o.IsDeleted
		}
		qIsDeleted := swag.FormatBool(qrIsDeleted)
		if qIsDeleted != "" {
			if err := r.SetQueryParam("isDeleted", qIsDeleted); err != nil {
				return err
			}
		}

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
