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
	"github.com/go-openapi/swag"
)

// Get the enum in AdminProfanityImportParams
const (
	AdminProfanityImportFULLREPLACEConstant = "FULLREPLACE"
	AdminProfanityImportLEAVEOUTConstant    = "LEAVEOUT"
	AdminProfanityImportREPLACEConstant     = "REPLACE"
)

// NewAdminProfanityImportParams creates a new AdminProfanityImportParams object
// with the default values initialized.
func NewAdminProfanityImportParams() *AdminProfanityImportParams {
	var (
		actionDefault     = string("REPLACE")
		showResultDefault = bool(false)
	)
	return &AdminProfanityImportParams{
		Action:     &actionDefault,
		ShowResult: &showResultDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminProfanityImportParamsWithTimeout creates a new AdminProfanityImportParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminProfanityImportParamsWithTimeout(timeout time.Duration) *AdminProfanityImportParams {
	var (
		actionDefault     = string("REPLACE")
		showResultDefault = bool(false)
	)
	return &AdminProfanityImportParams{
		Action:     &actionDefault,
		ShowResult: &showResultDefault,

		timeout: timeout,
	}
}

// NewAdminProfanityImportParamsWithContext creates a new AdminProfanityImportParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminProfanityImportParamsWithContext(ctx context.Context) *AdminProfanityImportParams {
	var (
		actionDefault     = string("REPLACE")
		showResultDefault = bool(false)
	)
	return &AdminProfanityImportParams{
		Action:     &actionDefault,
		ShowResult: &showResultDefault,

		Context: ctx,
	}
}

// NewAdminProfanityImportParamsWithHTTPClient creates a new AdminProfanityImportParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminProfanityImportParamsWithHTTPClient(client *http.Client) *AdminProfanityImportParams {
	var (
		actionDefault     = string("REPLACE")
		showResultDefault = bool(false)
	)
	return &AdminProfanityImportParams{
		Action:     &actionDefault,
		ShowResult: &showResultDefault,
		HTTPClient: client,
	}
}

/*AdminProfanityImportParams contains all the parameters to send to the API endpoint
for the admin profanity import operation typically these are written to a http.Request
*/
type AdminProfanityImportParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*File
	  file to be imported

	*/
	File runtime.NamedReadCloser
	/*Namespace
	  namespace

	*/
	Namespace string
	/*Action
	    The action when same words already exists</br>
									<b>REPLACE</b>: replace all same words with imported false positives and false negatives, existing non-imported words won't be removed</br>
	                                <b>FULLREPLACE</b>: replace all words with imported data and remove existing non-imported words, list words will be exactly same with imported data</br>
	                                <b>LEAVEOUT</b>: ignore imported same words, false positives and false negatives won't be replaced with imported data'

	*/
	Action *string
	/*ShowResult
	  When showResult=true, this endpoint with returns imported words result

	*/
	ShowResult *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin profanity import params
func (o *AdminProfanityImportParams) WithTimeout(timeout time.Duration) *AdminProfanityImportParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin profanity import params
func (o *AdminProfanityImportParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin profanity import params
func (o *AdminProfanityImportParams) WithContext(ctx context.Context) *AdminProfanityImportParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin profanity import params
func (o *AdminProfanityImportParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin profanity import params
func (o *AdminProfanityImportParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin profanity import params
func (o *AdminProfanityImportParams) WithHTTPClient(client *http.Client) *AdminProfanityImportParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin profanity import params
func (o *AdminProfanityImportParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin profanity import params
func (o *AdminProfanityImportParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithFile adds the file to the admin profanity import params
func (o *AdminProfanityImportParams) WithFile(file runtime.NamedReadCloser) *AdminProfanityImportParams {
	o.SetFile(file)
	return o
}

// SetFile adds the file to the admin profanity import params
func (o *AdminProfanityImportParams) SetFile(file runtime.NamedReadCloser) {
	o.File = file
}

// WithNamespace adds the namespace to the admin profanity import params
func (o *AdminProfanityImportParams) WithNamespace(namespace string) *AdminProfanityImportParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin profanity import params
func (o *AdminProfanityImportParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithAction adds the action to the admin profanity import params
func (o *AdminProfanityImportParams) WithAction(action *string) *AdminProfanityImportParams {
	o.SetAction(action)
	return o
}

// SetAction adds the action to the admin profanity import params
func (o *AdminProfanityImportParams) SetAction(action *string) {
	o.Action = action
}

// WithShowResult adds the showResult to the admin profanity import params
func (o *AdminProfanityImportParams) WithShowResult(showResult *bool) *AdminProfanityImportParams {
	o.SetShowResult(showResult)
	return o
}

// SetShowResult adds the showResult to the admin profanity import params
func (o *AdminProfanityImportParams) SetShowResult(showResult *bool) {
	o.ShowResult = showResult
}

// WriteToRequest writes these params to a swagger request
func (o *AdminProfanityImportParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// form file param file
	if err := r.SetFileParam("file", o.File); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Action != nil {

		// query param action
		var qrAction string
		if o.Action != nil {
			qrAction = *o.Action
		}
		qAction := qrAction
		if qAction != "" {
			if err := r.SetQueryParam("action", qAction); err != nil {
				return err
			}
		}

	}

	if o.ShowResult != nil {

		// query param showResult
		var qrShowResult bool
		if o.ShowResult != nil {
			qrShowResult = *o.ShowResult
		}
		qShowResult := swag.FormatBool(qrShowResult)
		if qShowResult != "" {
			if err := r.SetQueryParam("showResult", qShowResult); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
