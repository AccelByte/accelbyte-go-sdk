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

// NewRetrieveLatestPoliciesByNamespaceAndCountryPublic1Params creates a new RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params object
// with the default values initialized.
func NewRetrieveLatestPoliciesByNamespaceAndCountryPublic1Params() *RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params {
	var ()
	return &RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrieveLatestPoliciesByNamespaceAndCountryPublic1ParamsWithTimeout creates a new RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrieveLatestPoliciesByNamespaceAndCountryPublic1ParamsWithTimeout(timeout time.Duration) *RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params {
	var ()
	return &RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params{

		timeout: timeout,
	}
}

// NewRetrieveLatestPoliciesByNamespaceAndCountryPublic1ParamsWithContext creates a new RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params object
// with the default values initialized, and the ability to set a context for a request
func NewRetrieveLatestPoliciesByNamespaceAndCountryPublic1ParamsWithContext(ctx context.Context) *RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params {
	var ()
	return &RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params{

		Context: ctx,
	}
}

// NewRetrieveLatestPoliciesByNamespaceAndCountryPublic1ParamsWithHTTPClient creates a new RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrieveLatestPoliciesByNamespaceAndCountryPublic1ParamsWithHTTPClient(client *http.Client) *RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params {
	var ()
	return &RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params{
		HTTPClient: client,
	}
}

/*RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params contains all the parameters to send to the API endpoint
for the retrieve latest policies by namespace and country public 1 operation typically these are written to a http.Request
*/
type RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params struct {

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

// WithTimeout adds the timeout to the retrieve latest policies by namespace and country public 1 params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params) WithTimeout(timeout time.Duration) *RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve latest policies by namespace and country public 1 params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve latest policies by namespace and country public 1 params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params) WithContext(ctx context.Context) *RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve latest policies by namespace and country public 1 params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve latest policies by namespace and country public 1 params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve latest policies by namespace and country public 1 params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params) WithHTTPClient(client *http.Client) *RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve latest policies by namespace and country public 1 params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve latest policies by namespace and country public 1 params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCountryCode adds the countryCode to the retrieve latest policies by namespace and country public 1 params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params) WithCountryCode(countryCode string) *RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params {
	o.SetCountryCode(countryCode)
	return o
}

// SetCountryCode adds the countryCode to the retrieve latest policies by namespace and country public 1 params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params) SetCountryCode(countryCode string) {
	o.CountryCode = countryCode
}

// WithNamespace adds the namespace to the retrieve latest policies by namespace and country public 1 params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params) WithNamespace(namespace string) *RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the retrieve latest policies by namespace and country public 1 params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithClientID adds the clientID to the retrieve latest policies by namespace and country public 1 params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params) WithClientID(clientID string) *RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params {
	o.SetClientID(clientID)
	return o
}

// SetClientID adds the clientId to the retrieve latest policies by namespace and country public 1 params
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params) SetClientID(clientID string) {
	o.ClientID = clientID
}

// WriteToRequest writes these params to a swagger request
func (o *RetrieveLatestPoliciesByNamespaceAndCountryPublic1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
