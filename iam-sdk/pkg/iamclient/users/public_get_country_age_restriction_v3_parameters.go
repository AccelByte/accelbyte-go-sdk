// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

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

// NewPublicGetCountryAgeRestrictionV3Params creates a new PublicGetCountryAgeRestrictionV3Params object
// with the default values initialized.
func NewPublicGetCountryAgeRestrictionV3Params() *PublicGetCountryAgeRestrictionV3Params {
	var ()
	return &PublicGetCountryAgeRestrictionV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetCountryAgeRestrictionV3ParamsWithTimeout creates a new PublicGetCountryAgeRestrictionV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetCountryAgeRestrictionV3ParamsWithTimeout(timeout time.Duration) *PublicGetCountryAgeRestrictionV3Params {
	var ()
	return &PublicGetCountryAgeRestrictionV3Params{

		timeout: timeout,
	}
}

// NewPublicGetCountryAgeRestrictionV3ParamsWithContext creates a new PublicGetCountryAgeRestrictionV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetCountryAgeRestrictionV3ParamsWithContext(ctx context.Context) *PublicGetCountryAgeRestrictionV3Params {
	var ()
	return &PublicGetCountryAgeRestrictionV3Params{

		Context: ctx,
	}
}

// NewPublicGetCountryAgeRestrictionV3ParamsWithHTTPClient creates a new PublicGetCountryAgeRestrictionV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetCountryAgeRestrictionV3ParamsWithHTTPClient(client *http.Client) *PublicGetCountryAgeRestrictionV3Params {
	var ()
	return &PublicGetCountryAgeRestrictionV3Params{
		HTTPClient: client,
	}
}

/*PublicGetCountryAgeRestrictionV3Params contains all the parameters to send to the API endpoint
for the public get country age restriction v3 operation typically these are written to a http.Request
*/
type PublicGetCountryAgeRestrictionV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*CountryCode
	  Country Code

	*/
	CountryCode string
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get country age restriction v3 params
func (o *PublicGetCountryAgeRestrictionV3Params) WithTimeout(timeout time.Duration) *PublicGetCountryAgeRestrictionV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get country age restriction v3 params
func (o *PublicGetCountryAgeRestrictionV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get country age restriction v3 params
func (o *PublicGetCountryAgeRestrictionV3Params) WithContext(ctx context.Context) *PublicGetCountryAgeRestrictionV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get country age restriction v3 params
func (o *PublicGetCountryAgeRestrictionV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get country age restriction v3 params
func (o *PublicGetCountryAgeRestrictionV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get country age restriction v3 params
func (o *PublicGetCountryAgeRestrictionV3Params) WithHTTPClient(client *http.Client) *PublicGetCountryAgeRestrictionV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get country age restriction v3 params
func (o *PublicGetCountryAgeRestrictionV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get country age restriction v3 params
func (o *PublicGetCountryAgeRestrictionV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetCountryAgeRestrictionV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCountryCode adds the countryCode to the public get country age restriction v3 params
func (o *PublicGetCountryAgeRestrictionV3Params) WithCountryCode(countryCode string) *PublicGetCountryAgeRestrictionV3Params {
	o.SetCountryCode(countryCode)
	return o
}

// SetCountryCode adds the countryCode to the public get country age restriction v3 params
func (o *PublicGetCountryAgeRestrictionV3Params) SetCountryCode(countryCode string) {
	o.CountryCode = countryCode
}

// WithNamespace adds the namespace to the public get country age restriction v3 params
func (o *PublicGetCountryAgeRestrictionV3Params) WithNamespace(namespace string) *PublicGetCountryAgeRestrictionV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get country age restriction v3 params
func (o *PublicGetCountryAgeRestrictionV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetCountryAgeRestrictionV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
