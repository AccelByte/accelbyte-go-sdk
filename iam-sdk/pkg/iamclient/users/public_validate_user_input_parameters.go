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

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewPublicValidateUserInputParams creates a new PublicValidateUserInputParams object
// with the default values initialized.
func NewPublicValidateUserInputParams() *PublicValidateUserInputParams {
	var ()
	return &PublicValidateUserInputParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicValidateUserInputParamsWithTimeout creates a new PublicValidateUserInputParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicValidateUserInputParamsWithTimeout(timeout time.Duration) *PublicValidateUserInputParams {
	var ()
	return &PublicValidateUserInputParams{

		timeout: timeout,
	}
}

// NewPublicValidateUserInputParamsWithContext creates a new PublicValidateUserInputParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicValidateUserInputParamsWithContext(ctx context.Context) *PublicValidateUserInputParams {
	var ()
	return &PublicValidateUserInputParams{

		Context: ctx,
	}
}

// NewPublicValidateUserInputParamsWithHTTPClient creates a new PublicValidateUserInputParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicValidateUserInputParamsWithHTTPClient(client *http.Client) *PublicValidateUserInputParams {
	var ()
	return &PublicValidateUserInputParams{
		HTTPClient: client,
	}
}

/*PublicValidateUserInputParams contains all the parameters to send to the API endpoint
for the public validate user input operation typically these are written to a http.Request
*/
type PublicValidateUserInputParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelUserInputValidationRequest
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

// WithTimeout adds the timeout to the public validate user input params
func (o *PublicValidateUserInputParams) WithTimeout(timeout time.Duration) *PublicValidateUserInputParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public validate user input params
func (o *PublicValidateUserInputParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public validate user input params
func (o *PublicValidateUserInputParams) WithContext(ctx context.Context) *PublicValidateUserInputParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public validate user input params
func (o *PublicValidateUserInputParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public validate user input params
func (o *PublicValidateUserInputParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public validate user input params
func (o *PublicValidateUserInputParams) WithHTTPClient(client *http.Client) *PublicValidateUserInputParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public validate user input params
func (o *PublicValidateUserInputParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public validate user input params
func (o *PublicValidateUserInputParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicValidateUserInputParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public validate user input params
func (o *PublicValidateUserInputParams) WithBody(body *iamclientmodels.ModelUserInputValidationRequest) *PublicValidateUserInputParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public validate user input params
func (o *PublicValidateUserInputParams) SetBody(body *iamclientmodels.ModelUserInputValidationRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public validate user input params
func (o *PublicValidateUserInputParams) WithNamespace(namespace string) *PublicValidateUserInputParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public validate user input params
func (o *PublicValidateUserInputParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicValidateUserInputParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
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
