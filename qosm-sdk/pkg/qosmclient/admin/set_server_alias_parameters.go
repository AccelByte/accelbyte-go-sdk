// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg/qosmclientmodels"
)

// NewSetServerAliasParams creates a new SetServerAliasParams object
// with the default values initialized.
func NewSetServerAliasParams() *SetServerAliasParams {
	var ()
	return &SetServerAliasParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSetServerAliasParamsWithTimeout creates a new SetServerAliasParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSetServerAliasParamsWithTimeout(timeout time.Duration) *SetServerAliasParams {
	var ()
	return &SetServerAliasParams{

		timeout: timeout,
	}
}

// NewSetServerAliasParamsWithContext creates a new SetServerAliasParams object
// with the default values initialized, and the ability to set a context for a request
func NewSetServerAliasParamsWithContext(ctx context.Context) *SetServerAliasParams {
	var ()
	return &SetServerAliasParams{

		Context: ctx,
	}
}

// NewSetServerAliasParamsWithHTTPClient creates a new SetServerAliasParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSetServerAliasParamsWithHTTPClient(client *http.Client) *SetServerAliasParams {
	var ()
	return &SetServerAliasParams{
		HTTPClient: client,
	}
}

/*SetServerAliasParams contains all the parameters to send to the API endpoint
for the set server alias operation typically these are written to a http.Request
*/
type SetServerAliasParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *qosmclientmodels.ModelsSetAliasRequest
	/*Region
	  original region of the QoS

	*/
	Region string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the set server alias params
func (o *SetServerAliasParams) WithTimeout(timeout time.Duration) *SetServerAliasParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the set server alias params
func (o *SetServerAliasParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the set server alias params
func (o *SetServerAliasParams) WithContext(ctx context.Context) *SetServerAliasParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the set server alias params
func (o *SetServerAliasParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the set server alias params
func (o *SetServerAliasParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the set server alias params
func (o *SetServerAliasParams) WithHTTPClient(client *http.Client) *SetServerAliasParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the set server alias params
func (o *SetServerAliasParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the set server alias params
func (o *SetServerAliasParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SetServerAliasParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the set server alias params
func (o *SetServerAliasParams) WithBody(body *qosmclientmodels.ModelsSetAliasRequest) *SetServerAliasParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the set server alias params
func (o *SetServerAliasParams) SetBody(body *qosmclientmodels.ModelsSetAliasRequest) {
	o.Body = body
}

// WithRegion adds the region to the set server alias params
func (o *SetServerAliasParams) WithRegion(region string) *SetServerAliasParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the set server alias params
func (o *SetServerAliasParams) SetRegion(region string) {
	o.Region = region
}

// WriteToRequest writes these params to a swagger request
func (o *SetServerAliasParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param region
	if err := r.SetPathParam("region", o.Region); err != nil {
		return err
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
