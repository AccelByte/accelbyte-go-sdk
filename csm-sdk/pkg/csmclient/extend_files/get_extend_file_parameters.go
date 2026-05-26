// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package extend_files

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

// NewGetExtendFileParams creates a new GetExtendFileParams object
// with the default values initialized.
func NewGetExtendFileParams() *GetExtendFileParams {
	var ()
	return &GetExtendFileParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetExtendFileParamsWithTimeout creates a new GetExtendFileParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetExtendFileParamsWithTimeout(timeout time.Duration) *GetExtendFileParams {
	var ()
	return &GetExtendFileParams{

		timeout: timeout,
	}
}

// NewGetExtendFileParamsWithContext creates a new GetExtendFileParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetExtendFileParamsWithContext(ctx context.Context) *GetExtendFileParams {
	var ()
	return &GetExtendFileParams{

		Context: ctx,
	}
}

// NewGetExtendFileParamsWithHTTPClient creates a new GetExtendFileParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetExtendFileParamsWithHTTPClient(client *http.Client) *GetExtendFileParams {
	var ()
	return &GetExtendFileParams{
		HTTPClient: client,
	}
}

/*GetExtendFileParams contains all the parameters to send to the API endpoint
for the get extend file operation typically these are written to a http.Request
*/
type GetExtendFileParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*FilePath
	  Path to file under namespace assets

	*/
	FilePath string
	/*Namespace
	  Game Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get extend file params
func (o *GetExtendFileParams) WithTimeout(timeout time.Duration) *GetExtendFileParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get extend file params
func (o *GetExtendFileParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get extend file params
func (o *GetExtendFileParams) WithContext(ctx context.Context) *GetExtendFileParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get extend file params
func (o *GetExtendFileParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get extend file params
func (o *GetExtendFileParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get extend file params
func (o *GetExtendFileParams) WithHTTPClient(client *http.Client) *GetExtendFileParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get extend file params
func (o *GetExtendFileParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get extend file params
func (o *GetExtendFileParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetExtendFileParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithFilePath adds the filePath to the get extend file params
func (o *GetExtendFileParams) WithFilePath(filePath string) *GetExtendFileParams {
	o.SetFilePath(filePath)
	return o
}

// SetFilePath adds the filePath to the get extend file params
func (o *GetExtendFileParams) SetFilePath(filePath string) {
	o.FilePath = filePath
}

// WithNamespace adds the namespace to the get extend file params
func (o *GetExtendFileParams) WithNamespace(namespace string) *GetExtendFileParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get extend file params
func (o *GetExtendFileParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetExtendFileParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param filePath
	if err := r.SetPathParam("filePath", o.FilePath); err != nil {
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
