// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package base_legal_policies

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewOldRetrievePolicyCountryParams creates a new OldRetrievePolicyCountryParams object
// with the default values initialized.
func NewOldRetrievePolicyCountryParams() *OldRetrievePolicyCountryParams {
	var ()
	return &OldRetrievePolicyCountryParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewOldRetrievePolicyCountryParamsWithTimeout creates a new OldRetrievePolicyCountryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewOldRetrievePolicyCountryParamsWithTimeout(timeout time.Duration) *OldRetrievePolicyCountryParams {
	var ()
	return &OldRetrievePolicyCountryParams{

		timeout: timeout,
	}
}

// NewOldRetrievePolicyCountryParamsWithContext creates a new OldRetrievePolicyCountryParams object
// with the default values initialized, and the ability to set a context for a request
func NewOldRetrievePolicyCountryParamsWithContext(ctx context.Context) *OldRetrievePolicyCountryParams {
	var ()
	return &OldRetrievePolicyCountryParams{

		Context: ctx,
	}
}

// NewOldRetrievePolicyCountryParamsWithHTTPClient creates a new OldRetrievePolicyCountryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewOldRetrievePolicyCountryParamsWithHTTPClient(client *http.Client) *OldRetrievePolicyCountryParams {
	var ()
	return &OldRetrievePolicyCountryParams{
		HTTPClient: client,
	}
}

/*OldRetrievePolicyCountryParams contains all the parameters to send to the API endpoint
for the old retrieve policy country operation typically these are written to a http.Request
*/
type OldRetrievePolicyCountryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*BasePolicyID
	  BasePolicy Id

	*/
	BasePolicyID string
	/*CountryCode
	  Country Code

	*/
	CountryCode string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the old retrieve policy country params
func (o *OldRetrievePolicyCountryParams) WithTimeout(timeout time.Duration) *OldRetrievePolicyCountryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the old retrieve policy country params
func (o *OldRetrievePolicyCountryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the old retrieve policy country params
func (o *OldRetrievePolicyCountryParams) WithContext(ctx context.Context) *OldRetrievePolicyCountryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the old retrieve policy country params
func (o *OldRetrievePolicyCountryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the old retrieve policy country params
func (o *OldRetrievePolicyCountryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the old retrieve policy country params
func (o *OldRetrievePolicyCountryParams) WithHTTPClient(client *http.Client) *OldRetrievePolicyCountryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the old retrieve policy country params
func (o *OldRetrievePolicyCountryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the old retrieve policy country params
func (o *OldRetrievePolicyCountryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *OldRetrievePolicyCountryParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBasePolicyID adds the basePolicyID to the old retrieve policy country params
func (o *OldRetrievePolicyCountryParams) WithBasePolicyID(basePolicyID string) *OldRetrievePolicyCountryParams {
	o.SetBasePolicyID(basePolicyID)
	return o
}

// SetBasePolicyID adds the basePolicyId to the old retrieve policy country params
func (o *OldRetrievePolicyCountryParams) SetBasePolicyID(basePolicyID string) {
	o.BasePolicyID = basePolicyID
}

// WithCountryCode adds the countryCode to the old retrieve policy country params
func (o *OldRetrievePolicyCountryParams) WithCountryCode(countryCode string) *OldRetrievePolicyCountryParams {
	o.SetCountryCode(countryCode)
	return o
}

// SetCountryCode adds the countryCode to the old retrieve policy country params
func (o *OldRetrievePolicyCountryParams) SetCountryCode(countryCode string) {
	o.CountryCode = countryCode
}

// WriteToRequest writes these params to a swagger request
func (o *OldRetrievePolicyCountryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param basePolicyId
	if err := r.SetPathParam("basePolicyId", o.BasePolicyID); err != nil {
		return err
	}

	// path param countryCode
	if err := r.SetPathParam("countryCode", o.CountryCode); err != nil {
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
