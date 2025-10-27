// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package base_legal_policies_with_namespace

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

// NewRetrievePolicyCountryParams creates a new RetrievePolicyCountryParams object
// with the default values initialized.
func NewRetrievePolicyCountryParams() *RetrievePolicyCountryParams {
	var ()
	return &RetrievePolicyCountryParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrievePolicyCountryParamsWithTimeout creates a new RetrievePolicyCountryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrievePolicyCountryParamsWithTimeout(timeout time.Duration) *RetrievePolicyCountryParams {
	var ()
	return &RetrievePolicyCountryParams{

		timeout: timeout,
	}
}

// NewRetrievePolicyCountryParamsWithContext creates a new RetrievePolicyCountryParams object
// with the default values initialized, and the ability to set a context for a request
func NewRetrievePolicyCountryParamsWithContext(ctx context.Context) *RetrievePolicyCountryParams {
	var ()
	return &RetrievePolicyCountryParams{

		Context: ctx,
	}
}

// NewRetrievePolicyCountryParamsWithHTTPClient creates a new RetrievePolicyCountryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrievePolicyCountryParamsWithHTTPClient(client *http.Client) *RetrievePolicyCountryParams {
	var ()
	return &RetrievePolicyCountryParams{
		HTTPClient: client,
	}
}

/*RetrievePolicyCountryParams contains all the parameters to send to the API endpoint
for the retrieve policy country operation typically these are written to a http.Request
*/
type RetrievePolicyCountryParams struct {

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
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the retrieve policy country params
func (o *RetrievePolicyCountryParams) WithTimeout(timeout time.Duration) *RetrievePolicyCountryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve policy country params
func (o *RetrievePolicyCountryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve policy country params
func (o *RetrievePolicyCountryParams) WithContext(ctx context.Context) *RetrievePolicyCountryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve policy country params
func (o *RetrievePolicyCountryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve policy country params
func (o *RetrievePolicyCountryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve policy country params
func (o *RetrievePolicyCountryParams) WithHTTPClient(client *http.Client) *RetrievePolicyCountryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve policy country params
func (o *RetrievePolicyCountryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve policy country params
func (o *RetrievePolicyCountryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RetrievePolicyCountryParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBasePolicyID adds the basePolicyID to the retrieve policy country params
func (o *RetrievePolicyCountryParams) WithBasePolicyID(basePolicyID string) *RetrievePolicyCountryParams {
	o.SetBasePolicyID(basePolicyID)
	return o
}

// SetBasePolicyID adds the basePolicyId to the retrieve policy country params
func (o *RetrievePolicyCountryParams) SetBasePolicyID(basePolicyID string) {
	o.BasePolicyID = basePolicyID
}

// WithCountryCode adds the countryCode to the retrieve policy country params
func (o *RetrievePolicyCountryParams) WithCountryCode(countryCode string) *RetrievePolicyCountryParams {
	o.SetCountryCode(countryCode)
	return o
}

// SetCountryCode adds the countryCode to the retrieve policy country params
func (o *RetrievePolicyCountryParams) SetCountryCode(countryCode string) {
	o.CountryCode = countryCode
}

// WithNamespace adds the namespace to the retrieve policy country params
func (o *RetrievePolicyCountryParams) WithNamespace(namespace string) *RetrievePolicyCountryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the retrieve policy country params
func (o *RetrievePolicyCountryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *RetrievePolicyCountryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
