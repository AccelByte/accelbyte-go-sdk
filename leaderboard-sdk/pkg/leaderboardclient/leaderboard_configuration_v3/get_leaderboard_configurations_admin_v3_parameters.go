// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package leaderboard_configuration_v3

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

// NewGetLeaderboardConfigurationsAdminV3Params creates a new GetLeaderboardConfigurationsAdminV3Params object
// with the default values initialized.
func NewGetLeaderboardConfigurationsAdminV3Params() *GetLeaderboardConfigurationsAdminV3Params {
	var ()
	return &GetLeaderboardConfigurationsAdminV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetLeaderboardConfigurationsAdminV3ParamsWithTimeout creates a new GetLeaderboardConfigurationsAdminV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetLeaderboardConfigurationsAdminV3ParamsWithTimeout(timeout time.Duration) *GetLeaderboardConfigurationsAdminV3Params {
	var ()
	return &GetLeaderboardConfigurationsAdminV3Params{

		timeout: timeout,
	}
}

// NewGetLeaderboardConfigurationsAdminV3ParamsWithContext creates a new GetLeaderboardConfigurationsAdminV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetLeaderboardConfigurationsAdminV3ParamsWithContext(ctx context.Context) *GetLeaderboardConfigurationsAdminV3Params {
	var ()
	return &GetLeaderboardConfigurationsAdminV3Params{

		Context: ctx,
	}
}

// NewGetLeaderboardConfigurationsAdminV3ParamsWithHTTPClient creates a new GetLeaderboardConfigurationsAdminV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetLeaderboardConfigurationsAdminV3ParamsWithHTTPClient(client *http.Client) *GetLeaderboardConfigurationsAdminV3Params {
	var ()
	return &GetLeaderboardConfigurationsAdminV3Params{
		HTTPClient: client,
	}
}

/*GetLeaderboardConfigurationsAdminV3Params contains all the parameters to send to the API endpoint
for the get leaderboard configurations admin v3 operation typically these are written to a http.Request
*/
type GetLeaderboardConfigurationsAdminV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
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

// WithTimeout adds the timeout to the get leaderboard configurations admin v3 params
func (o *GetLeaderboardConfigurationsAdminV3Params) WithTimeout(timeout time.Duration) *GetLeaderboardConfigurationsAdminV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get leaderboard configurations admin v3 params
func (o *GetLeaderboardConfigurationsAdminV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get leaderboard configurations admin v3 params
func (o *GetLeaderboardConfigurationsAdminV3Params) WithContext(ctx context.Context) *GetLeaderboardConfigurationsAdminV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get leaderboard configurations admin v3 params
func (o *GetLeaderboardConfigurationsAdminV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get leaderboard configurations admin v3 params
func (o *GetLeaderboardConfigurationsAdminV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get leaderboard configurations admin v3 params
func (o *GetLeaderboardConfigurationsAdminV3Params) WithHTTPClient(client *http.Client) *GetLeaderboardConfigurationsAdminV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get leaderboard configurations admin v3 params
func (o *GetLeaderboardConfigurationsAdminV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get leaderboard configurations admin v3 params
func (o *GetLeaderboardConfigurationsAdminV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get leaderboard configurations admin v3 params
func (o *GetLeaderboardConfigurationsAdminV3Params) WithNamespace(namespace string) *GetLeaderboardConfigurationsAdminV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get leaderboard configurations admin v3 params
func (o *GetLeaderboardConfigurationsAdminV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithIsDeleted adds the isDeleted to the get leaderboard configurations admin v3 params
func (o *GetLeaderboardConfigurationsAdminV3Params) WithIsDeleted(isDeleted *bool) *GetLeaderboardConfigurationsAdminV3Params {
	o.SetIsDeleted(isDeleted)
	return o
}

// SetIsDeleted adds the isDeleted to the get leaderboard configurations admin v3 params
func (o *GetLeaderboardConfigurationsAdminV3Params) SetIsDeleted(isDeleted *bool) {
	o.IsDeleted = isDeleted
}

// WithLimit adds the limit to the get leaderboard configurations admin v3 params
func (o *GetLeaderboardConfigurationsAdminV3Params) WithLimit(limit *int64) *GetLeaderboardConfigurationsAdminV3Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get leaderboard configurations admin v3 params
func (o *GetLeaderboardConfigurationsAdminV3Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get leaderboard configurations admin v3 params
func (o *GetLeaderboardConfigurationsAdminV3Params) WithOffset(offset *int64) *GetLeaderboardConfigurationsAdminV3Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get leaderboard configurations admin v3 params
func (o *GetLeaderboardConfigurationsAdminV3Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetLeaderboardConfigurationsAdminV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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
