// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package roles

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

// NewPublicGetRolesV3Params creates a new PublicGetRolesV3Params object
// with the default values initialized.
func NewPublicGetRolesV3Params() *PublicGetRolesV3Params {
	var ()
	return &PublicGetRolesV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetRolesV3ParamsWithTimeout creates a new PublicGetRolesV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetRolesV3ParamsWithTimeout(timeout time.Duration) *PublicGetRolesV3Params {
	var ()
	return &PublicGetRolesV3Params{

		timeout: timeout,
	}
}

// NewPublicGetRolesV3ParamsWithContext creates a new PublicGetRolesV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetRolesV3ParamsWithContext(ctx context.Context) *PublicGetRolesV3Params {
	var ()
	return &PublicGetRolesV3Params{

		Context: ctx,
	}
}

// NewPublicGetRolesV3ParamsWithHTTPClient creates a new PublicGetRolesV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetRolesV3ParamsWithHTTPClient(client *http.Client) *PublicGetRolesV3Params {
	var ()
	return &PublicGetRolesV3Params{
		HTTPClient: client,
	}
}

/*PublicGetRolesV3Params contains all the parameters to send to the API endpoint
for the public get roles v3 operation typically these are written to a http.Request
*/
type PublicGetRolesV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*After
	  The cursor that points to query data for the next page

	*/
	After *string
	/*Before
	  The cursor that points to query data for the previous page

	*/
	Before *string
	/*IsWildcard
	    - true if the expected result should only returns records with wildcard = true
	- false if the expected result should only returns records with wildcard = false
	- empty (omitted) if the expected result should returns records with no wildcard filter at all


	*/
	IsWildcard *bool
	/*Limit
	  the maximum number of data that may be returned (1...100)

	*/
	Limit *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get roles v3 params
func (o *PublicGetRolesV3Params) WithTimeout(timeout time.Duration) *PublicGetRolesV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get roles v3 params
func (o *PublicGetRolesV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get roles v3 params
func (o *PublicGetRolesV3Params) WithContext(ctx context.Context) *PublicGetRolesV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get roles v3 params
func (o *PublicGetRolesV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get roles v3 params
func (o *PublicGetRolesV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get roles v3 params
func (o *PublicGetRolesV3Params) WithHTTPClient(client *http.Client) *PublicGetRolesV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get roles v3 params
func (o *PublicGetRolesV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get roles v3 params
func (o *PublicGetRolesV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetRolesV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithAfter adds the after to the public get roles v3 params
func (o *PublicGetRolesV3Params) WithAfter(after *string) *PublicGetRolesV3Params {
	o.SetAfter(after)
	return o
}

// SetAfter adds the after to the public get roles v3 params
func (o *PublicGetRolesV3Params) SetAfter(after *string) {
	o.After = after
}

// WithBefore adds the before to the public get roles v3 params
func (o *PublicGetRolesV3Params) WithBefore(before *string) *PublicGetRolesV3Params {
	o.SetBefore(before)
	return o
}

// SetBefore adds the before to the public get roles v3 params
func (o *PublicGetRolesV3Params) SetBefore(before *string) {
	o.Before = before
}

// WithIsWildcard adds the isWildcard to the public get roles v3 params
func (o *PublicGetRolesV3Params) WithIsWildcard(isWildcard *bool) *PublicGetRolesV3Params {
	o.SetIsWildcard(isWildcard)
	return o
}

// SetIsWildcard adds the isWildcard to the public get roles v3 params
func (o *PublicGetRolesV3Params) SetIsWildcard(isWildcard *bool) {
	o.IsWildcard = isWildcard
}

// WithLimit adds the limit to the public get roles v3 params
func (o *PublicGetRolesV3Params) WithLimit(limit *int64) *PublicGetRolesV3Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public get roles v3 params
func (o *PublicGetRolesV3Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetRolesV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.After != nil {

		// query param after
		var qrAfter string
		if o.After != nil {
			qrAfter = *o.After
		}
		qAfter := qrAfter
		if qAfter != "" {
			if err := r.SetQueryParam("after", qAfter); err != nil {
				return err
			}
		}

	}

	if o.Before != nil {

		// query param before
		var qrBefore string
		if o.Before != nil {
			qrBefore = *o.Before
		}
		qBefore := qrBefore
		if qBefore != "" {
			if err := r.SetQueryParam("before", qBefore); err != nil {
				return err
			}
		}

	}

	if o.IsWildcard != nil {

		// query param isWildcard
		var qrIsWildcard bool
		if o.IsWildcard != nil {
			qrIsWildcard = *o.IsWildcard
		}
		qIsWildcard := swag.FormatBool(qrIsWildcard)
		if qIsWildcard != "" {
			if err := r.SetQueryParam("isWildcard", qIsWildcard); err != nil {
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
