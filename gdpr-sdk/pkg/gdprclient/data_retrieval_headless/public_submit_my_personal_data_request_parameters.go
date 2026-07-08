// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package data_retrieval_headless

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

// NewPublicSubmitMyPersonalDataRequestParams creates a new PublicSubmitMyPersonalDataRequestParams object
// with the default values initialized.
func NewPublicSubmitMyPersonalDataRequestParams() *PublicSubmitMyPersonalDataRequestParams {
	var ()
	return &PublicSubmitMyPersonalDataRequestParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicSubmitMyPersonalDataRequestParamsWithTimeout creates a new PublicSubmitMyPersonalDataRequestParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicSubmitMyPersonalDataRequestParamsWithTimeout(timeout time.Duration) *PublicSubmitMyPersonalDataRequestParams {
	var ()
	return &PublicSubmitMyPersonalDataRequestParams{

		timeout: timeout,
	}
}

// NewPublicSubmitMyPersonalDataRequestParamsWithContext creates a new PublicSubmitMyPersonalDataRequestParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicSubmitMyPersonalDataRequestParamsWithContext(ctx context.Context) *PublicSubmitMyPersonalDataRequestParams {
	var ()
	return &PublicSubmitMyPersonalDataRequestParams{

		Context: ctx,
	}
}

// NewPublicSubmitMyPersonalDataRequestParamsWithHTTPClient creates a new PublicSubmitMyPersonalDataRequestParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicSubmitMyPersonalDataRequestParamsWithHTTPClient(client *http.Client) *PublicSubmitMyPersonalDataRequestParams {
	var ()
	return &PublicSubmitMyPersonalDataRequestParams{
		HTTPClient: client,
	}
}

/*PublicSubmitMyPersonalDataRequestParams contains all the parameters to send to the API endpoint
for the public submit my personal data request operation typically these are written to a http.Request
*/
type PublicSubmitMyPersonalDataRequestParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Email
	  Email address to receive notifications and download links when the generated data is ready.

	*/
	Email *string
	/*LanguageTag
	  Language tag for the notification email

	*/
	LanguageTag *string
	/*PlatformID
	  Platform ID

	*/
	PlatformID string
	/*PlatformToken
	  Platform token

	*/
	PlatformToken string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public submit my personal data request params
func (o *PublicSubmitMyPersonalDataRequestParams) WithTimeout(timeout time.Duration) *PublicSubmitMyPersonalDataRequestParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public submit my personal data request params
func (o *PublicSubmitMyPersonalDataRequestParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public submit my personal data request params
func (o *PublicSubmitMyPersonalDataRequestParams) WithContext(ctx context.Context) *PublicSubmitMyPersonalDataRequestParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public submit my personal data request params
func (o *PublicSubmitMyPersonalDataRequestParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public submit my personal data request params
func (o *PublicSubmitMyPersonalDataRequestParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public submit my personal data request params
func (o *PublicSubmitMyPersonalDataRequestParams) WithHTTPClient(client *http.Client) *PublicSubmitMyPersonalDataRequestParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public submit my personal data request params
func (o *PublicSubmitMyPersonalDataRequestParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public submit my personal data request params
func (o *PublicSubmitMyPersonalDataRequestParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicSubmitMyPersonalDataRequestParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithEmail adds the email to the public submit my personal data request params
func (o *PublicSubmitMyPersonalDataRequestParams) WithEmail(email *string) *PublicSubmitMyPersonalDataRequestParams {
	o.SetEmail(email)
	return o
}

// SetEmail adds the email to the public submit my personal data request params
func (o *PublicSubmitMyPersonalDataRequestParams) SetEmail(email *string) {
	o.Email = email
}

// WithLanguageTag adds the languageTag to the public submit my personal data request params
func (o *PublicSubmitMyPersonalDataRequestParams) WithLanguageTag(languageTag *string) *PublicSubmitMyPersonalDataRequestParams {
	o.SetLanguageTag(languageTag)
	return o
}

// SetLanguageTag adds the languageTag to the public submit my personal data request params
func (o *PublicSubmitMyPersonalDataRequestParams) SetLanguageTag(languageTag *string) {
	o.LanguageTag = languageTag
}

// WithPlatformID adds the platformID to the public submit my personal data request params
func (o *PublicSubmitMyPersonalDataRequestParams) WithPlatformID(platformID string) *PublicSubmitMyPersonalDataRequestParams {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the public submit my personal data request params
func (o *PublicSubmitMyPersonalDataRequestParams) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WithPlatformToken adds the platformToken to the public submit my personal data request params
func (o *PublicSubmitMyPersonalDataRequestParams) WithPlatformToken(platformToken string) *PublicSubmitMyPersonalDataRequestParams {
	o.SetPlatformToken(platformToken)
	return o
}

// SetPlatformToken adds the platformToken to the public submit my personal data request params
func (o *PublicSubmitMyPersonalDataRequestParams) SetPlatformToken(platformToken string) {
	o.PlatformToken = platformToken
}

// WriteToRequest writes these params to a swagger request
func (o *PublicSubmitMyPersonalDataRequestParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Email != nil {

		// form param email
		var frEmail string
		if o.Email != nil {
			frEmail = *o.Email
		}
		fEmail := frEmail
		if fEmail != "" {
			if err := r.SetFormParam("email", fEmail); err != nil {
				return err
			}
		}

	}

	if o.LanguageTag != nil {

		// form param languageTag
		var frLanguageTag string
		if o.LanguageTag != nil {
			frLanguageTag = *o.LanguageTag
		}
		fLanguageTag := frLanguageTag
		if fLanguageTag != "" {
			if err := r.SetFormParam("languageTag", fLanguageTag); err != nil {
				return err
			}
		}

	}

	// form param platformId
	frPlatformID := o.PlatformID
	fPlatformID := frPlatformID
	if fPlatformID != "" {
		if err := r.SetFormParam("platformId", fPlatformID); err != nil {
			return err
		}
	}

	// form param platformToken
	frPlatformToken := o.PlatformToken
	fPlatformToken := frPlatformToken
	if fPlatformToken != "" {
		if err := r.SetFormParam("platformToken", fPlatformToken); err != nil {
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
