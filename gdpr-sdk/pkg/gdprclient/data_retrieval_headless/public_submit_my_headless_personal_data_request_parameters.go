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

// NewPublicSubmitMyHeadlessPersonalDataRequestParams creates a new PublicSubmitMyHeadlessPersonalDataRequestParams object
// with the default values initialized.
func NewPublicSubmitMyHeadlessPersonalDataRequestParams() *PublicSubmitMyHeadlessPersonalDataRequestParams {
	var ()
	return &PublicSubmitMyHeadlessPersonalDataRequestParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicSubmitMyHeadlessPersonalDataRequestParamsWithTimeout creates a new PublicSubmitMyHeadlessPersonalDataRequestParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicSubmitMyHeadlessPersonalDataRequestParamsWithTimeout(timeout time.Duration) *PublicSubmitMyHeadlessPersonalDataRequestParams {
	var ()
	return &PublicSubmitMyHeadlessPersonalDataRequestParams{

		timeout: timeout,
	}
}

// NewPublicSubmitMyHeadlessPersonalDataRequestParamsWithContext creates a new PublicSubmitMyHeadlessPersonalDataRequestParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicSubmitMyHeadlessPersonalDataRequestParamsWithContext(ctx context.Context) *PublicSubmitMyHeadlessPersonalDataRequestParams {
	var ()
	return &PublicSubmitMyHeadlessPersonalDataRequestParams{

		Context: ctx,
	}
}

// NewPublicSubmitMyHeadlessPersonalDataRequestParamsWithHTTPClient creates a new PublicSubmitMyHeadlessPersonalDataRequestParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicSubmitMyHeadlessPersonalDataRequestParamsWithHTTPClient(client *http.Client) *PublicSubmitMyHeadlessPersonalDataRequestParams {
	var ()
	return &PublicSubmitMyHeadlessPersonalDataRequestParams{
		HTTPClient: client,
	}
}

/*PublicSubmitMyHeadlessPersonalDataRequestParams contains all the parameters to send to the API endpoint
for the public submit my headless personal data request operation typically these are written to a http.Request
*/
type PublicSubmitMyHeadlessPersonalDataRequestParams struct {

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

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public submit my headless personal data request params
func (o *PublicSubmitMyHeadlessPersonalDataRequestParams) WithTimeout(timeout time.Duration) *PublicSubmitMyHeadlessPersonalDataRequestParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public submit my headless personal data request params
func (o *PublicSubmitMyHeadlessPersonalDataRequestParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public submit my headless personal data request params
func (o *PublicSubmitMyHeadlessPersonalDataRequestParams) WithContext(ctx context.Context) *PublicSubmitMyHeadlessPersonalDataRequestParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public submit my headless personal data request params
func (o *PublicSubmitMyHeadlessPersonalDataRequestParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public submit my headless personal data request params
func (o *PublicSubmitMyHeadlessPersonalDataRequestParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public submit my headless personal data request params
func (o *PublicSubmitMyHeadlessPersonalDataRequestParams) WithHTTPClient(client *http.Client) *PublicSubmitMyHeadlessPersonalDataRequestParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public submit my headless personal data request params
func (o *PublicSubmitMyHeadlessPersonalDataRequestParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public submit my headless personal data request params
func (o *PublicSubmitMyHeadlessPersonalDataRequestParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicSubmitMyHeadlessPersonalDataRequestParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithEmail adds the email to the public submit my headless personal data request params
func (o *PublicSubmitMyHeadlessPersonalDataRequestParams) WithEmail(email *string) *PublicSubmitMyHeadlessPersonalDataRequestParams {
	o.SetEmail(email)
	return o
}

// SetEmail adds the email to the public submit my headless personal data request params
func (o *PublicSubmitMyHeadlessPersonalDataRequestParams) SetEmail(email *string) {
	o.Email = email
}

// WithLanguageTag adds the languageTag to the public submit my headless personal data request params
func (o *PublicSubmitMyHeadlessPersonalDataRequestParams) WithLanguageTag(languageTag *string) *PublicSubmitMyHeadlessPersonalDataRequestParams {
	o.SetLanguageTag(languageTag)
	return o
}

// SetLanguageTag adds the languageTag to the public submit my headless personal data request params
func (o *PublicSubmitMyHeadlessPersonalDataRequestParams) SetLanguageTag(languageTag *string) {
	o.LanguageTag = languageTag
}

// WriteToRequest writes these params to a swagger request
func (o *PublicSubmitMyHeadlessPersonalDataRequestParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
