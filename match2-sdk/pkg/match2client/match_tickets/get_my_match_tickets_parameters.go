// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match_tickets

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

// NewGetMyMatchTicketsParams creates a new GetMyMatchTicketsParams object
// with the default values initialized.
func NewGetMyMatchTicketsParams() *GetMyMatchTicketsParams {
	var ()
	return &GetMyMatchTicketsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetMyMatchTicketsParamsWithTimeout creates a new GetMyMatchTicketsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetMyMatchTicketsParamsWithTimeout(timeout time.Duration) *GetMyMatchTicketsParams {
	var ()
	return &GetMyMatchTicketsParams{

		timeout: timeout,
	}
}

// NewGetMyMatchTicketsParamsWithContext creates a new GetMyMatchTicketsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetMyMatchTicketsParamsWithContext(ctx context.Context) *GetMyMatchTicketsParams {
	var ()
	return &GetMyMatchTicketsParams{

		Context: ctx,
	}
}

// NewGetMyMatchTicketsParamsWithHTTPClient creates a new GetMyMatchTicketsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetMyMatchTicketsParamsWithHTTPClient(client *http.Client) *GetMyMatchTicketsParams {
	var ()
	return &GetMyMatchTicketsParams{
		HTTPClient: client,
	}
}

/*GetMyMatchTicketsParams contains all the parameters to send to the API endpoint
for the get my match tickets operation typically these are written to a http.Request
*/
type GetMyMatchTicketsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Limit
	  limit of the returned data

	*/
	Limit *int64
	/*MatchPool
	  ticket match pool

	*/
	MatchPool *string
	/*Offset
	  offset of the data

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get my match tickets params
func (o *GetMyMatchTicketsParams) WithTimeout(timeout time.Duration) *GetMyMatchTicketsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get my match tickets params
func (o *GetMyMatchTicketsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get my match tickets params
func (o *GetMyMatchTicketsParams) WithContext(ctx context.Context) *GetMyMatchTicketsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get my match tickets params
func (o *GetMyMatchTicketsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get my match tickets params
func (o *GetMyMatchTicketsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get my match tickets params
func (o *GetMyMatchTicketsParams) WithHTTPClient(client *http.Client) *GetMyMatchTicketsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get my match tickets params
func (o *GetMyMatchTicketsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get my match tickets params
func (o *GetMyMatchTicketsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get my match tickets params
func (o *GetMyMatchTicketsParams) WithNamespace(namespace string) *GetMyMatchTicketsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get my match tickets params
func (o *GetMyMatchTicketsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the get my match tickets params
func (o *GetMyMatchTicketsParams) WithLimit(limit *int64) *GetMyMatchTicketsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get my match tickets params
func (o *GetMyMatchTicketsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithMatchPool adds the matchPool to the get my match tickets params
func (o *GetMyMatchTicketsParams) WithMatchPool(matchPool *string) *GetMyMatchTicketsParams {
	o.SetMatchPool(matchPool)
	return o
}

// SetMatchPool adds the matchPool to the get my match tickets params
func (o *GetMyMatchTicketsParams) SetMatchPool(matchPool *string) {
	o.MatchPool = matchPool
}

// WithOffset adds the offset to the get my match tickets params
func (o *GetMyMatchTicketsParams) WithOffset(offset *int64) *GetMyMatchTicketsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get my match tickets params
func (o *GetMyMatchTicketsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetMyMatchTicketsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.MatchPool != nil {

		// query param matchPool
		var qrMatchPool string
		if o.MatchPool != nil {
			qrMatchPool = *o.MatchPool
		}
		qMatchPool := qrMatchPool
		if qMatchPool != "" {
			if err := r.SetQueryParam("matchPool", qMatchPool); err != nil {
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
