// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_content

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// NewAdminGetContentBulkByShareCodesParams creates a new AdminGetContentBulkByShareCodesParams object
// with the default values initialized.
func NewAdminGetContentBulkByShareCodesParams() *AdminGetContentBulkByShareCodesParams {
	var ()
	return &AdminGetContentBulkByShareCodesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetContentBulkByShareCodesParamsWithTimeout creates a new AdminGetContentBulkByShareCodesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetContentBulkByShareCodesParamsWithTimeout(timeout time.Duration) *AdminGetContentBulkByShareCodesParams {
	var ()
	return &AdminGetContentBulkByShareCodesParams{

		timeout: timeout,
	}
}

// NewAdminGetContentBulkByShareCodesParamsWithContext creates a new AdminGetContentBulkByShareCodesParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetContentBulkByShareCodesParamsWithContext(ctx context.Context) *AdminGetContentBulkByShareCodesParams {
	var ()
	return &AdminGetContentBulkByShareCodesParams{

		Context: ctx,
	}
}

// NewAdminGetContentBulkByShareCodesParamsWithHTTPClient creates a new AdminGetContentBulkByShareCodesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetContentBulkByShareCodesParamsWithHTTPClient(client *http.Client) *AdminGetContentBulkByShareCodesParams {
	var ()
	return &AdminGetContentBulkByShareCodesParams{
		HTTPClient: client,
	}
}

/*AdminGetContentBulkByShareCodesParams contains all the parameters to send to the API endpoint
for the admin get content bulk by share codes operation typically these are written to a http.Request
*/
type AdminGetContentBulkByShareCodesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsGetContentBulkByShareCodesRequest
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get content bulk by share codes params
func (o *AdminGetContentBulkByShareCodesParams) WithTimeout(timeout time.Duration) *AdminGetContentBulkByShareCodesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get content bulk by share codes params
func (o *AdminGetContentBulkByShareCodesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get content bulk by share codes params
func (o *AdminGetContentBulkByShareCodesParams) WithContext(ctx context.Context) *AdminGetContentBulkByShareCodesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get content bulk by share codes params
func (o *AdminGetContentBulkByShareCodesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get content bulk by share codes params
func (o *AdminGetContentBulkByShareCodesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get content bulk by share codes params
func (o *AdminGetContentBulkByShareCodesParams) WithHTTPClient(client *http.Client) *AdminGetContentBulkByShareCodesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get content bulk by share codes params
func (o *AdminGetContentBulkByShareCodesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get content bulk by share codes params
func (o *AdminGetContentBulkByShareCodesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetContentBulkByShareCodesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin get content bulk by share codes params
func (o *AdminGetContentBulkByShareCodesParams) WithBody(body *ugcclientmodels.ModelsGetContentBulkByShareCodesRequest) *AdminGetContentBulkByShareCodesParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin get content bulk by share codes params
func (o *AdminGetContentBulkByShareCodesParams) SetBody(body *ugcclientmodels.ModelsGetContentBulkByShareCodesRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin get content bulk by share codes params
func (o *AdminGetContentBulkByShareCodesParams) WithNamespace(namespace string) *AdminGetContentBulkByShareCodesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get content bulk by share codes params
func (o *AdminGetContentBulkByShareCodesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetContentBulkByShareCodesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
