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

// NewAdminGetContentBulkParams creates a new AdminGetContentBulkParams object
// with the default values initialized.
func NewAdminGetContentBulkParams() *AdminGetContentBulkParams {
	var ()
	return &AdminGetContentBulkParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetContentBulkParamsWithTimeout creates a new AdminGetContentBulkParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetContentBulkParamsWithTimeout(timeout time.Duration) *AdminGetContentBulkParams {
	var ()
	return &AdminGetContentBulkParams{

		timeout: timeout,
	}
}

// NewAdminGetContentBulkParamsWithContext creates a new AdminGetContentBulkParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetContentBulkParamsWithContext(ctx context.Context) *AdminGetContentBulkParams {
	var ()
	return &AdminGetContentBulkParams{

		Context: ctx,
	}
}

// NewAdminGetContentBulkParamsWithHTTPClient creates a new AdminGetContentBulkParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetContentBulkParamsWithHTTPClient(client *http.Client) *AdminGetContentBulkParams {
	var ()
	return &AdminGetContentBulkParams{
		HTTPClient: client,
	}
}

/*AdminGetContentBulkParams contains all the parameters to send to the API endpoint
for the admin get content bulk operation typically these are written to a http.Request
*/
type AdminGetContentBulkParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsAdminGetContentBulkRequest
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

// WithTimeout adds the timeout to the admin get content bulk params
func (o *AdminGetContentBulkParams) WithTimeout(timeout time.Duration) *AdminGetContentBulkParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get content bulk params
func (o *AdminGetContentBulkParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get content bulk params
func (o *AdminGetContentBulkParams) WithContext(ctx context.Context) *AdminGetContentBulkParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get content bulk params
func (o *AdminGetContentBulkParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get content bulk params
func (o *AdminGetContentBulkParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get content bulk params
func (o *AdminGetContentBulkParams) WithHTTPClient(client *http.Client) *AdminGetContentBulkParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get content bulk params
func (o *AdminGetContentBulkParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get content bulk params
func (o *AdminGetContentBulkParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetContentBulkParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin get content bulk params
func (o *AdminGetContentBulkParams) WithBody(body *ugcclientmodels.ModelsAdminGetContentBulkRequest) *AdminGetContentBulkParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin get content bulk params
func (o *AdminGetContentBulkParams) SetBody(body *ugcclientmodels.ModelsAdminGetContentBulkRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin get content bulk params
func (o *AdminGetContentBulkParams) WithNamespace(namespace string) *AdminGetContentBulkParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get content bulk params
func (o *AdminGetContentBulkParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetContentBulkParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
