// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package policies_with_namespace_v2

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

// NewRetrieveLatestPoliciesByNamespaceAndCountryPublicParams creates a new RetrieveLatestPoliciesByNamespaceAndCountryPublicParams object
// with the default values initialized.
func NewRetrieveLatestPoliciesByNamespaceAndCountryPublicParams() *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	var ()
	return &RetrieveLatestPoliciesByNamespaceAndCountryPublicParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrieveLatestPoliciesByNamespaceAndCountryPublicParamsWithTimeout creates a new RetrieveLatestPoliciesByNamespaceAndCountryPublicParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrieveLatestPoliciesByNamespaceAndCountryPublicParamsWithTimeout(timeout time.Duration) *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	var ()
	return &RetrieveLatestPoliciesByNamespaceAndCountryPublicParams{

		timeout: timeout,
	}
}

// NewRetrieveLatestPoliciesByNamespaceAndCountryPublicParamsWithContext creates a new RetrieveLatestPoliciesByNamespaceAndCountryPublicParams object
// with the default values initialized, and the ability to set a context for a request
func NewRetrieveLatestPoliciesByNamespaceAndCountryPublicParamsWithContext(ctx context.Context) *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	var ()
	return &RetrieveLatestPoliciesByNamespaceAndCountryPublicParams{

		Context: ctx,
	}
}

// NewRetrieveLatestPoliciesByNamespaceAndCountryPublicParamsWithHTTPClient creates a new RetrieveLatestPoliciesByNamespaceAndCountryPublicParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrieveLatestPoliciesByNamespaceAndCountryPublicParamsWithHTTPClient(client *http.Client) *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	var ()
	return &RetrieveLatestPoliciesByNamespaceAndCountryPublicParams{
		HTTPClient: client,
	}
}

/*RetrieveLatestPoliciesByNamespaceAndCountryPublicParams contains all the parameters to send to the API endpoint
for the retrieve latest policies by namespace and country public operation typically these are written to a http.Request
*/
type RetrieveLatestPoliciesByNamespaceAndCountryPublicParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*CountryCode
	  Country Code

	*/
	CountryCode string
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*ClientID
	  clientId, which used to login

	*/
	ClientID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) WithTimeout(timeout time.Duration) *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) WithContext(ctx context.Context) *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) WithHTTPClient(client *http.Client) *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCountryCode adds the countryCode to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) WithCountryCode(countryCode string) *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	o.SetCountryCode(countryCode)
	return o
}

// SetCountryCode adds the countryCode to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) SetCountryCode(countryCode string) {
	o.CountryCode = countryCode
}

// WithNamespace adds the namespace to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) WithNamespace(namespace string) *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithClientID adds the clientID to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) WithClientID(clientID string) *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams {
	o.SetClientID(clientID)
	return o
}

// SetClientID adds the clientId to the retrieve latest policies by namespace and country public params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) SetClientID(clientID string) {
	o.ClientID = clientID
}

// WriteToRequest writes these params to a swagger request
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublicParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param countryCode
	if err := r.SetPathParam("countryCode", o.CountryCode); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param clientId
	qrClientID := o.ClientID
	qClientID := qrClientID
	if qClientID != "" {
		if err := r.SetQueryParam("clientId", qClientID); err != nil {
			return err
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
