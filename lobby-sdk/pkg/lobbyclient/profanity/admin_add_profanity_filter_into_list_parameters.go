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

// NewAdminAddProfanityFilterIntoListParams creates a new AdminAddProfanityFilterIntoListParams object
// with the default values initialized.
func NewAdminAddProfanityFilterIntoListParams() *AdminAddProfanityFilterIntoListParams {
	var ()
	return &AdminAddProfanityFilterIntoListParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminAddProfanityFilterIntoListParamsWithTimeout creates a new AdminAddProfanityFilterIntoListParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminAddProfanityFilterIntoListParamsWithTimeout(timeout time.Duration) *AdminAddProfanityFilterIntoListParams {
	var ()
	return &AdminAddProfanityFilterIntoListParams{

		timeout: timeout,
	}
}

// NewAdminAddProfanityFilterIntoListParamsWithContext creates a new AdminAddProfanityFilterIntoListParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminAddProfanityFilterIntoListParamsWithContext(ctx context.Context) *AdminAddProfanityFilterIntoListParams {
	var ()
	return &AdminAddProfanityFilterIntoListParams{

		Context: ctx,
	}
}

// NewAdminAddProfanityFilterIntoListParamsWithHTTPClient creates a new AdminAddProfanityFilterIntoListParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminAddProfanityFilterIntoListParamsWithHTTPClient(client *http.Client) *AdminAddProfanityFilterIntoListParams {
	var ()
	return &AdminAddProfanityFilterIntoListParams{
		HTTPClient: client,
	}
}

/*AdminAddProfanityFilterIntoListParams contains all the parameters to send to the API endpoint
for the admin add profanity filter into list operation typically these are written to a http.Request
*/
type AdminAddProfanityFilterIntoListParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *lobbyclientmodels.ModelsAdminAddProfanityFilterIntoListRequest
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

// WithTimeout adds the timeout to the admin add profanity filter into list params
func (o *AdminAddProfanityFilterIntoListParams) WithTimeout(timeout time.Duration) *AdminAddProfanityFilterIntoListParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin add profanity filter into list params
func (o *AdminAddProfanityFilterIntoListParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin add profanity filter into list params
func (o *AdminAddProfanityFilterIntoListParams) WithContext(ctx context.Context) *AdminAddProfanityFilterIntoListParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin add profanity filter into list params
func (o *AdminAddProfanityFilterIntoListParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin add profanity filter into list params
func (o *AdminAddProfanityFilterIntoListParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin add profanity filter into list params
func (o *AdminAddProfanityFilterIntoListParams) WithHTTPClient(client *http.Client) *AdminAddProfanityFilterIntoListParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin add profanity filter into list params
func (o *AdminAddProfanityFilterIntoListParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin add profanity filter into list params
func (o *AdminAddProfanityFilterIntoListParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminAddProfanityFilterIntoListParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin add profanity filter into list params
func (o *AdminAddProfanityFilterIntoListParams) WithBody(body *lobbyclientmodels.ModelsAdminAddProfanityFilterIntoListRequest) *AdminAddProfanityFilterIntoListParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin add profanity filter into list params
func (o *AdminAddProfanityFilterIntoListParams) SetBody(body *lobbyclientmodels.ModelsAdminAddProfanityFilterIntoListRequest) {
	o.Body = body
}

// WithList adds the listVar to the admin add profanity filter into list params
func (o *AdminAddProfanityFilterIntoListParams) WithList(listVar string) *AdminAddProfanityFilterIntoListParams {
	o.SetList(listVar)
	return o
}

// SetList adds the list to the admin add profanity filter into list params
func (o *AdminAddProfanityFilterIntoListParams) SetList(listVar string) {
	o.List = listVar
}

// WithNamespace adds the namespace to the admin add profanity filter into list params
func (o *AdminAddProfanityFilterIntoListParams) WithNamespace(namespace string) *AdminAddProfanityFilterIntoListParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin add profanity filter into list params
func (o *AdminAddProfanityFilterIntoListParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminAddProfanityFilterIntoListParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
