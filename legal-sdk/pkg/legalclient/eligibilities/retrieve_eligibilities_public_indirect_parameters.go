// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package eligibilities

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

// NewRetrieveEligibilitiesPublicIndirectParams creates a new RetrieveEligibilitiesPublicIndirectParams object
// with the default values initialized.
func NewRetrieveEligibilitiesPublicIndirectParams() *RetrieveEligibilitiesPublicIndirectParams {
	var ()
	return &RetrieveEligibilitiesPublicIndirectParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrieveEligibilitiesPublicIndirectParamsWithTimeout creates a new RetrieveEligibilitiesPublicIndirectParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrieveEligibilitiesPublicIndirectParamsWithTimeout(timeout time.Duration) *RetrieveEligibilitiesPublicIndirectParams {
	var ()
	return &RetrieveEligibilitiesPublicIndirectParams{

		timeout: timeout,
	}
}

// NewRetrieveEligibilitiesPublicIndirectParamsWithContext creates a new RetrieveEligibilitiesPublicIndirectParams object
// with the default values initialized, and the ability to set a context for a request
func NewRetrieveEligibilitiesPublicIndirectParamsWithContext(ctx context.Context) *RetrieveEligibilitiesPublicIndirectParams {
	var ()
	return &RetrieveEligibilitiesPublicIndirectParams{

		Context: ctx,
	}
}

// NewRetrieveEligibilitiesPublicIndirectParamsWithHTTPClient creates a new RetrieveEligibilitiesPublicIndirectParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrieveEligibilitiesPublicIndirectParamsWithHTTPClient(client *http.Client) *RetrieveEligibilitiesPublicIndirectParams {
	var ()
	return &RetrieveEligibilitiesPublicIndirectParams{
		HTTPClient: client,
	}
}

/*RetrieveEligibilitiesPublicIndirectParams contains all the parameters to send to the API endpoint
for the retrieve eligibilities public indirect operation typically these are written to a http.Request
*/
type RetrieveEligibilitiesPublicIndirectParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ClientID
	  Client Id

	*/
	ClientID string
	/*CountryCode
	  Country Code

	*/
	CountryCode string
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*UserID
	  User Id

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the retrieve eligibilities public indirect params
func (o *RetrieveEligibilitiesPublicIndirectParams) WithTimeout(timeout time.Duration) *RetrieveEligibilitiesPublicIndirectParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve eligibilities public indirect params
func (o *RetrieveEligibilitiesPublicIndirectParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve eligibilities public indirect params
func (o *RetrieveEligibilitiesPublicIndirectParams) WithContext(ctx context.Context) *RetrieveEligibilitiesPublicIndirectParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve eligibilities public indirect params
func (o *RetrieveEligibilitiesPublicIndirectParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve eligibilities public indirect params
func (o *RetrieveEligibilitiesPublicIndirectParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve eligibilities public indirect params
func (o *RetrieveEligibilitiesPublicIndirectParams) WithHTTPClient(client *http.Client) *RetrieveEligibilitiesPublicIndirectParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve eligibilities public indirect params
func (o *RetrieveEligibilitiesPublicIndirectParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve eligibilities public indirect params
func (o *RetrieveEligibilitiesPublicIndirectParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RetrieveEligibilitiesPublicIndirectParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithClientID adds the clientID to the retrieve eligibilities public indirect params
func (o *RetrieveEligibilitiesPublicIndirectParams) WithClientID(clientID string) *RetrieveEligibilitiesPublicIndirectParams {
	o.SetClientID(clientID)
	return o
}

// SetClientID adds the clientId to the retrieve eligibilities public indirect params
func (o *RetrieveEligibilitiesPublicIndirectParams) SetClientID(clientID string) {
	o.ClientID = clientID
}

// WithCountryCode adds the countryCode to the retrieve eligibilities public indirect params
func (o *RetrieveEligibilitiesPublicIndirectParams) WithCountryCode(countryCode string) *RetrieveEligibilitiesPublicIndirectParams {
	o.SetCountryCode(countryCode)
	return o
}

// SetCountryCode adds the countryCode to the retrieve eligibilities public indirect params
func (o *RetrieveEligibilitiesPublicIndirectParams) SetCountryCode(countryCode string) {
	o.CountryCode = countryCode
}

// WithNamespace adds the namespace to the retrieve eligibilities public indirect params
func (o *RetrieveEligibilitiesPublicIndirectParams) WithNamespace(namespace string) *RetrieveEligibilitiesPublicIndirectParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the retrieve eligibilities public indirect params
func (o *RetrieveEligibilitiesPublicIndirectParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the retrieve eligibilities public indirect params
func (o *RetrieveEligibilitiesPublicIndirectParams) WithUserID(userID string) *RetrieveEligibilitiesPublicIndirectParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the retrieve eligibilities public indirect params
func (o *RetrieveEligibilitiesPublicIndirectParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *RetrieveEligibilitiesPublicIndirectParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param clientId
	if err := r.SetPathParam("clientId", o.ClientID); err != nil {
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

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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
