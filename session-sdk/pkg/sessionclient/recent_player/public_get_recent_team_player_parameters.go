// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package recent_player

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

// NewPublicGetRecentTeamPlayerParams creates a new PublicGetRecentTeamPlayerParams object
// with the default values initialized.
func NewPublicGetRecentTeamPlayerParams() *PublicGetRecentTeamPlayerParams {
	var (
		limitDefault = int64(20)
	)
	return &PublicGetRecentTeamPlayerParams{
		Limit: &limitDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetRecentTeamPlayerParamsWithTimeout creates a new PublicGetRecentTeamPlayerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetRecentTeamPlayerParamsWithTimeout(timeout time.Duration) *PublicGetRecentTeamPlayerParams {
	var (
		limitDefault = int64(20)
	)
	return &PublicGetRecentTeamPlayerParams{
		Limit: &limitDefault,

		timeout: timeout,
	}
}

// NewPublicGetRecentTeamPlayerParamsWithContext creates a new PublicGetRecentTeamPlayerParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetRecentTeamPlayerParamsWithContext(ctx context.Context) *PublicGetRecentTeamPlayerParams {
	var (
		limitDefault = int64(20)
	)
	return &PublicGetRecentTeamPlayerParams{
		Limit: &limitDefault,

		Context: ctx,
	}
}

// NewPublicGetRecentTeamPlayerParamsWithHTTPClient creates a new PublicGetRecentTeamPlayerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetRecentTeamPlayerParamsWithHTTPClient(client *http.Client) *PublicGetRecentTeamPlayerParams {
	var (
		limitDefault = int64(20)
	)
	return &PublicGetRecentTeamPlayerParams{
		Limit:      &limitDefault,
		HTTPClient: client,
	}
}

/*PublicGetRecentTeamPlayerParams contains all the parameters to send to the API endpoint
for the public get recent team player operation typically these are written to a http.Request
*/
type PublicGetRecentTeamPlayerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*Limit
	  Recent Player Limit

	*/
	Limit *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get recent team player params
func (o *PublicGetRecentTeamPlayerParams) WithTimeout(timeout time.Duration) *PublicGetRecentTeamPlayerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get recent team player params
func (o *PublicGetRecentTeamPlayerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get recent team player params
func (o *PublicGetRecentTeamPlayerParams) WithContext(ctx context.Context) *PublicGetRecentTeamPlayerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get recent team player params
func (o *PublicGetRecentTeamPlayerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get recent team player params
func (o *PublicGetRecentTeamPlayerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get recent team player params
func (o *PublicGetRecentTeamPlayerParams) WithHTTPClient(client *http.Client) *PublicGetRecentTeamPlayerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get recent team player params
func (o *PublicGetRecentTeamPlayerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get recent team player params
func (o *PublicGetRecentTeamPlayerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetRecentTeamPlayerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public get recent team player params
func (o *PublicGetRecentTeamPlayerParams) WithNamespace(namespace string) *PublicGetRecentTeamPlayerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get recent team player params
func (o *PublicGetRecentTeamPlayerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the public get recent team player params
func (o *PublicGetRecentTeamPlayerParams) WithLimit(limit *int64) *PublicGetRecentTeamPlayerParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public get recent team player params
func (o *PublicGetRecentTeamPlayerParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetRecentTeamPlayerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
