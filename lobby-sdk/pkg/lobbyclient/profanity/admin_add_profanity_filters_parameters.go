// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package profanity

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// NewAdminAddProfanityFiltersParams creates a new AdminAddProfanityFiltersParams object
// with the default values initialized.
func NewAdminAddProfanityFiltersParams() *AdminAddProfanityFiltersParams {
	var ()
	return &AdminAddProfanityFiltersParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminAddProfanityFiltersParamsWithTimeout creates a new AdminAddProfanityFiltersParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminAddProfanityFiltersParamsWithTimeout(timeout time.Duration) *AdminAddProfanityFiltersParams {
	var ()
	return &AdminAddProfanityFiltersParams{

		timeout: timeout,
	}
}

// NewAdminAddProfanityFiltersParamsWithContext creates a new AdminAddProfanityFiltersParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminAddProfanityFiltersParamsWithContext(ctx context.Context) *AdminAddProfanityFiltersParams {
	var ()
	return &AdminAddProfanityFiltersParams{

		Context: ctx,
	}
}

// NewAdminAddProfanityFiltersParamsWithHTTPClient creates a new AdminAddProfanityFiltersParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminAddProfanityFiltersParamsWithHTTPClient(client *http.Client) *AdminAddProfanityFiltersParams {
	var ()
	return &AdminAddProfanityFiltersParams{
		HTTPClient: client,
	}
}

/*AdminAddProfanityFiltersParams contains all the parameters to send to the API endpoint
for the admin add profanity filters operation typically these are written to a http.Request
*/
type AdminAddProfanityFiltersParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *lobbyclientmodels.ModelsAdminAddProfanityFiltersRequest
	/*List
	  list

	*/
	List string
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin add profanity filters params
func (o *AdminAddProfanityFiltersParams) WithTimeout(timeout time.Duration) *AdminAddProfanityFiltersParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin add profanity filters params
func (o *AdminAddProfanityFiltersParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin add profanity filters params
func (o *AdminAddProfanityFiltersParams) WithContext(ctx context.Context) *AdminAddProfanityFiltersParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin add profanity filters params
func (o *AdminAddProfanityFiltersParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin add profanity filters params
func (o *AdminAddProfanityFiltersParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin add profanity filters params
func (o *AdminAddProfanityFiltersParams) WithHTTPClient(client *http.Client) *AdminAddProfanityFiltersParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin add profanity filters params
func (o *AdminAddProfanityFiltersParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin add profanity filters params
func (o *AdminAddProfanityFiltersParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminAddProfanityFiltersParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin add profanity filters params
func (o *AdminAddProfanityFiltersParams) WithBody(body *lobbyclientmodels.ModelsAdminAddProfanityFiltersRequest) *AdminAddProfanityFiltersParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin add profanity filters params
func (o *AdminAddProfanityFiltersParams) SetBody(body *lobbyclientmodels.ModelsAdminAddProfanityFiltersRequest) {
	o.Body = body
}

// WithList adds the listVar to the admin add profanity filters params
func (o *AdminAddProfanityFiltersParams) WithList(listVar string) *AdminAddProfanityFiltersParams {
	o.SetList(listVar)
	return o
}

// SetList adds the list to the admin add profanity filters params
func (o *AdminAddProfanityFiltersParams) SetList(listVar string) {
	o.List = listVar
}

// WithNamespace adds the namespace to the admin add profanity filters params
func (o *AdminAddProfanityFiltersParams) WithNamespace(namespace string) *AdminAddProfanityFiltersParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin add profanity filters params
func (o *AdminAddProfanityFiltersParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminAddProfanityFiltersParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param list
	if err := r.SetPathParam("list", o.List); err != nil {
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
